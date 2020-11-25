import "package:flutter/material.dart";
import 'package:shoppingappflutter/constants/Constants.dart';
import 'package:shoppingappflutter/models/Product.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
           child: GridView.builder(
             itemCount: products.length,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 childAspectRatio: 0.70,
                 mainAxisSpacing:kDefaultPadding,
                 crossAxisSpacing: kDefaultPadding
             ),
                  itemBuilder: (context, index) => ItemCard(product: products[index],),
           ),
         ),
        )
      ],
    );
  }
}

