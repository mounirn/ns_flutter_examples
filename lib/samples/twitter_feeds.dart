import 'package:flutter/material.dart';
import 'package:tweet_ui/models/api/tweet.dart';
import 'package:tweet_ui/tweet_ui.dart';

import '../services/twitter_service.dart';

// https://github.com/ably-labs/live-cryptocurrency-streaming-flutter/blob/master/lib/view/twitter_feed.dart
class TwitterFeedView extends StatefulWidget {
  const TwitterFeedView({Key? key, required this.hashtag}) : super(key: key);
  final String hashtag;

  @override
  _TwitterFeedViewState createState() => _TwitterFeedViewState();
}

class _TwitterFeedViewState extends State<TwitterFeedView> {
  List tweetsJson = [];
  String errorMessage = '';

  @override
  void initState() {
    getTweets();
    super.initState();
  }

  // Get tweets from Twitter Service
  Future getTweets() async {
    final twitterService = TwitterAPIService();

    try {
      var tweets = await twitterService.getTweetsQuery(widget.hashtag);

      setState(() {
        tweetsJson = tweets;
      });
    } catch (error) {
      setState(() {
        errorMessage = 'Error retrieving tweets, please try again later.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("#${widget.hashtag}"),
      ),
      body: RefreshIndicator(
        onRefresh: () => getTweets(),
        child: tweetsJson.isEmpty
            ? errorMessage.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Center(
                    child: Text(errorMessage),
                  )
            : ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 15),
                itemCount: tweetsJson.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: EmbeddedTweetView.fromTweet(
                      Tweet.fromJson(tweetsJson[index]),
                      darkMode: true,
                      backgroundColor: Colors.transparent,
                      useVideoPlayer: false,
                    ),
                  );
                },
              ),
      ),
    );
  }
}
