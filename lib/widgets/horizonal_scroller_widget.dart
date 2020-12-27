import 'package:flutter/material.dart';

class HorizontalScrollerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(10),
      width: double.maxFinite,
      height: 50,
      color: Colors.white,
      child: ListView.builder(itemBuilder: (context, index) {
        return filterItem("Item$index");
      },
        itemCount: 7,
        scrollDirection: Axis.horizontal,
      )
    );
  }

  Widget filterItem(String title) {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Chip(
          label: Text(title),
          shadowColor: Colors.grey,
        ),
      );
  }
}
