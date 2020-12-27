import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(Icons.location_on, color: Colors.red,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Junavas, Madhapar, Bhuj",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 1.5,
                decorationThickness: 2.0,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ),
          )
        ],
      )
    );
  }
}
