import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zomato_ui/Models/grid_item_model.dart';

class CategoryGrid extends StatefulWidget {
  @override
  _CategoryGridState createState() => _CategoryGridState();
}

class _CategoryGridState extends State<CategoryGrid> {
  var array = GridItemModel.getArray();
  bool isSeeMore = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Eat what makes you happy",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 20
            ),
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            child: Wrap(
              direction: Axis.horizontal,
              children: List.generate(isSeeMore ? array.length : array.length - (array.length~/2), (index) {
                return GridItem(itemModel: array[index],);
              }).toList(),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: OutlineButton(
              onPressed: () {
                setState(() {
                  isSeeMore = !isSeeMore;
                });
              },
              child: Text("See more"),
            ),
          )
        ],
      ),
    );
  }
}



class GridItem extends StatelessWidget {
  final GridItemModel itemModel;
  GridItem({this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 - 20,
      height: 120,
      child: Card(
        child: Stack(
          children: [
            Container(
              height: 75,
              width: 150,
              child: Image.asset(itemModel.image, fit: BoxFit.fill,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                color: Colors.grey,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(itemModel.name, textAlign: TextAlign.center,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
