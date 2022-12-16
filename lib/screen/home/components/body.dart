

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hangerstore_test/constants.dart';
import 'package:hangerstore_test/models/Product.dart';
import 'package:hangerstore_test/screen/details/details_screen.dart';
import 'package:hangerstore_test/screen/details/hanger/carousel.dart';

import '../../../Animations/backgroundimage.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Carosel1(),
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              '  Products',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold,),
            ),
          ),
          Divider(color: Colors.black87,endIndent: 12,indent: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product1: products[index],
                    ),
                  )),
                ),
              ),
            ),
          ),
        ],
      );
  }
}
