import 'package:flutter/material.dart';
import 'package:shoppingappflutter/constants/Constants.dart';
import 'package:shoppingappflutter/models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({Key key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
//          width: 160,
//          height: 180,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(19.0)),
              child: Hero(tag: "${product.id}", child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child:
                Text(product.title, style: TextStyle(color: kTextLightColor)),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
