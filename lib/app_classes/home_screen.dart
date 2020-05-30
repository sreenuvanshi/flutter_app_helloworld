import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: _myListView(context),
      //  bottomNavigationBar: makeBottom,
    );
  }

  Widget _myListView(BuildContext context) {
    // backing data
    final europeanCountries = [
      'albania',
      'Andorra',
      'Armenia',
      'Austria',
      'Azerbaijan',
      'Belarus'
    ];

    return ListView.builder(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
      itemCount: europeanCountries.length,
      itemBuilder: (context, index) {
        return Center(
          child: GradientCard(
            elevation: 30,
            gradient: Gradients.deepSpace,
            shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
            margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 10),
                ListTile(
                  title: Text(europeanCountries[index],
                      style: getTextStyle(Colors.black)),
                  subtitle: Text(
                      'Music by Julie Gable. Lyrics by Sidney Stein.',
                      style: getTextStyle(Colors.grey)),
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      padding: EdgeInsets.only(left: 35.0, right: 35.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text('Next', style: getTextStyle(Colors.white)),
                      color: Colors.lightBlue,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  getTextStyle(Color color) {
    return TextStyle(fontFamily: 'Verdana', fontSize: 18.0, color: color);
  }

  Widget getButton(String title, BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(30),
      color: Colors.lightBlue,
      child: MaterialButton(
        height: 10.0,
        padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
        child: Text(title,
            textAlign: TextAlign.center, style: getTextStyle(Colors.white)),
        onPressed: () {},
      ),
    );
  }

  final makeBottom = Container(
    height: 55.0,
    child: BottomAppBar(
      color: Color.fromRGBO(58, 66, 86, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.blur_on, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.hotel, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_box, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}
