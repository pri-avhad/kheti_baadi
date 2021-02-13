import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


Color blue1 = Color(0XFFB2DB5B);
Widget searchBar(){
  return TextField(
    style: TextStyle(
      color: blue1,
      fontSize: 20,
    ),
    cursorColor: blue1,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(10)),
          borderSide: BorderSide(
              color: blue1, width: 1.5)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(10)),
          borderSide: BorderSide(
              color: blue1, width: 1.5)),
      contentPadding: EdgeInsets.fromLTRB(
          10,10,
          0,10),
      suffixIcon: IconButton(
        icon: Icon(
          Icons.mic,
          color: blue1,
          size:20,
        ),
        onPressed: () {
          //TODO trigger STT and then search
        },
      ),
      labelText: 'Text Input',
      labelStyle: TextStyle(
        fontSize:
        20,
        color: blue1,
      ),
    ),
    onSubmitted: (value) {
      //TODO trigger search
    },
  );
}

Widget productDetailCard() {

  String name = 'Chambal fertilizer';
  String price = 'Rs7/kg';
  String seller = 'deepak industries';
  String link = 'www.google.com';

  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Material(
          borderRadius: BorderRadius.circular(15.0),
          elevation: 10.0,
          color: Colors.grey[800],
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/leaf.jpg')
                        )
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(name,
                      style: TextStyle (
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(price,
                      style: TextStyle (
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(seller,
                      style: TextStyle (
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(link,
                      style: TextStyle (
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}

