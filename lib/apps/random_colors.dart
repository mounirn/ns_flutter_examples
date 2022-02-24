import 'package:flutter/material.dart';
import '../app.dart';
import '../drawer.dart';
import '../utils/random_color.dart';

/// https://www.geeksforgeeks.org/flutter-concept-of-key-in-widgets/
void runRandomColorsApp() => runSample( _PositionedTiles());
  
class _PositionedTiles extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _PositionedTilesState();
}
  
class _PositionedTilesState extends State<_PositionedTiles>{
  late List<Widget> tiles;
  
  @override
  void initState(){
    super.initState();
    tiles = [
      StatefulColorfulTile(key: UniqueKey()),
      StatefulColorfulTile(key: UniqueKey()),
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Random Colors - from Geeks for Geeks"),
        backgroundColor: Colors.green,
        ) ,
      body: SafeArea(child: Row(children: tiles)),
      drawer: buildAppDrawer(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.sentiment_very_satisfied), 
          onPressed: swapTiles),
    );
  }
  
  swapTiles(){
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}
  
class StatefulColorfulTile extends StatefulWidget {
  const StatefulColorfulTile({required Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => StatefulColorfulTileState();
}
class StatefulColorfulTileState extends State<StatefulColorfulTile> {
  late Color myColor;
  @override
  void initState() {
    super.initState();
    myColor = UniqueColorGenerator.getColor();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: myColor,
        child: const Padding(
          padding: EdgeInsets.all(70.0),
        ));
  }
}