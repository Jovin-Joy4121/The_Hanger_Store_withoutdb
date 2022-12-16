import 'package:flutter/material.dart';
import 'package:hangerstore_test/models/Product.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';
import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product1? product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(child: RichText(
          text: TextSpan(
            style: TextStyle(color: kTextColor),
            children: [
              TextSpan(text: 'Quantity\n',
              ),
              TextSpan(
                text: '${product!.quantity!} Piece',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),),
      ],
    );
  }
}

