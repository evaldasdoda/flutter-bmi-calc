import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReusableCard(
                    colour: Color(0xff1d1e33),
                    cardChild: new IconContent(),
                  ),
                ),
                Expanded(
                  child: new ReusableCard(
                    colour: Color(0xff1d1e33),
                    cardChild: new IconContent(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: new ReusableCard(colour: Color(0xff1d1e33)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReusableCard(colour: Color(0xff1d1e33)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xff1d1e33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  const IconContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //IconContent({});
    Icons gender;
    Text genderText;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.mars,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'MALE',
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xff8d8e98),
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
