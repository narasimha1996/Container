import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 20.0, top: 40.0),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        // width: 200,
        // height: 200,
        margin: EdgeInsets.all(15.0),
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            Expanded(
                child: Text("Air India",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontStyle: FontStyle.italic))),
            Expanded(
                child: Text("AMP to SBC",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontStyle: FontStyle.italic)))
          ]),
          Row(children: <Widget>[
            Expanded(
                child: Text("Jet Airways",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontStyle: FontStyle.italic))),
            Expanded(
                child: Text("AMP to HYD",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontStyle: FontStyle.italic)))
          ]),
          FlightImageAsset(),
          FlightBookButton()
        ]),
      ),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    AssetImage assetImage = AssetImage('images/flight.jpg');
    Image image = Image(image: assetImage, width: 250, height: 250);
    return Container(
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      // ignore: deprecated_member_use
      child: RaisedButton(
          color: Colors.yellowAccent,
          child: Text("Book Your Flight",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
                fontFamily: 'raleway',
                fontWeight: FontWeight.w700,
              )),
          elevation: 6.0,
          onPressed: () => bookFlight(context)),
    );
  }
}

void bookFlight(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Flight Booked Successfully"),
    content: Text("Have a Nice Journey"),
  );
  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}
