import 'dart:convert';

import '../keys.dart';

import 'twitter_api_v1.dart';

class TwitterAPIService {
  late TwitterApi _twitterApi;
  TwitterAPIService() {
    _twitterApi = TwitterApi(
      cTwitterApiKey, cTwitterApiKeySecret, cTwitterApiBearerToken, cTwitterTokenSecret
    ); 
  }

  static const String path = "search/tweets.json";

  Future<List> getTweetsQuery(String queryTag) async {
    try {
      // Make the request to twitter
      var response = await _twitterApi.getTwitterRequest(
        // Http Method
        "GET",
        // Endpoint you are trying to reach
        path,
        // The options for the request
        options: {
          "q": queryTag,
          "count": "50",
        },
      );

      if (response == null) {
        return [];
      }
      final decodedResponse = json.decode(response.body);

        return decodedResponse['statuses'] as List;
    } catch (error) {
        rethrow;
    }
  }
}
