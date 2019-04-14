import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight/2);

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name!=null),
        assert(color!=null),
        assert(iconLocation!=null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () => print("I was tapped!"),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}



















//class Category extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//        color: Colors.teal[300],
//        height: 100.0,
//        child: Padding(
//          padding: EdgeInsets.all(8.0),
//          child: InkWell(
//              onTap: () => print("I was tapped"),
//              highlightColor: Colors.redAccent,
//              splashColor: Colors.amberAccent,
//              child: Row(
//                children: <Widget>[
//                  Padding(
//                    padding: EdgeInsets.all(16.0),
//                    child: Icon(Icons.accessibility, size: 60.0,),
//                  ),
//                  Center(
//                    child: Text("Person", style: TextStyle(fontSize: 24.0),),
//                  )
//                ],
//              )),
//        ));
//  }
//}


