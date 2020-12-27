import 'package:flutter/material.dart';
import 'package:flutter_zomato_ui/Utils/header_delegate.dart';
import 'package:flutter_zomato_ui/widgets/category_grid_widget.dart';
import 'package:flutter_zomato_ui/widgets/horizonal_scroller_widget.dart';
import 'package:flutter_zomato_ui/widgets/location_widget.dart';
import 'package:flutter_zomato_ui/widgets/offer_card_widget.dart';
import 'package:flutter_zomato_ui/widgets/search_bar_widget.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: LocationWidget()),
            SliverPersistentHeader(
              pinned: true,
                delegate: HeaderDelegate(
                  container: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SearchBar(),
                        HorizontalScrollerWidget()
                      ],
                    ),
                  ),
                ),
            ),
            SliverToBoxAdapter(child: OfferCard()),
            SliverToBoxAdapter(child: CategoryGrid())
          ],
        ),
      )
    );
  }
}
