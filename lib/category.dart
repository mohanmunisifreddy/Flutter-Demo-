import 'package:flutter/material.dart';
import 'unit.dart';
import 'converter_route.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight/2);

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
  final List<Unit> units;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
    @required this.units,
  })  : assert(name!=null),
        assert(color!=null),
        assert(iconLocation!=null),
        assert(units!=null),
        super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text(name),
              backgroundColor: color,
              centerTitle: true,
              automaticallyImplyLeading: true,
              leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context, false)),
            ),
            body: ConverterRoute(name: name, color: color, units: units),
          ),
        );
      })
    );
  }

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
          onTap: () {
            _navigateToConverter(context);
            print("I was tapped!");
          },
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


