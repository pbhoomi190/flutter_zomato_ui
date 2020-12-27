import 'package:flutter/material.dart';
import 'package:flutter_zomato_ui/constants/texts.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            offset: Offset(
              0.0,
              0.0,
            ),
          )
        ]
      ),
      child: TextField(
        cursorColor: Colors.grey,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.grey,),
            labelText: textfieldPlaceholder,

            labelStyle: TextStyle(
              color: Colors.grey
            )
          ),
      ),
    );
  }
}
