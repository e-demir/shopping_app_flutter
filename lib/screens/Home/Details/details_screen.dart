import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppingappflutter/constants/Constants.dart';
import 'package:shoppingappflutter/models/Product.dart';

import 'body_details.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar:buildAppBar(context),
      body: DetailsBody(product: product ,),
    );
  }
  AppBar buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding/2),
        child: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg",color: Colors.white,),
          onPressed:() => Navigator.pop(context),
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg",color: Colors.white,),
          onPressed: (){},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg",color: Colors.white,),
          onPressed: (){},
        ),
        SizedBox(width: kDefaultPadding/2,)
      ],
    );
  }

}

