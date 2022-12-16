import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hangerstore_test/constants.dart';
import 'package:hangerstore_test/models/Product.dart';
import 'package:hangerstore_test/screen/details/hanger/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product1? product1;

  const DetailsScreen({this.product1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product1!.color,
      appBar: buildAppBar(context),
      body: Body(product: product1!),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product1!.color,
      elevation: 0.0,
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
            )),
        SizedBox(width: kDefaultPadding),
      ],
    );
  }
}
