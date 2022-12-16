import 'package:flutter/material.dart';
import 'package:hangerstore_test/models/Product.dart';
import 'package:hangerstore_test/screen/details/hanger/sharedprf.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../constants.dart';



class ProductTitleWithImage extends StatefulWidget {

  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product1? product;

  @override
  State<ProductTitleWithImage> createState() => _ProductTitleWithImageState();
}

class _ProductTitleWithImageState extends State<ProductTitleWithImage> {
  late SharedPreferences logindata;
  late String email;

  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      email = logindata.getString('email')!;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Premium Hangers $email'
                '',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            widget.product!.title!,
            style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Price\n'),
                    TextSpan(text: '₹${widget.product!.price!}',style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white , fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(child: Hero(tag: '${widget.product!.id!}',child: Image.asset(widget.product!.image!,fit: BoxFit.fill,))),
            ],
          )
          ,

        ],
      ),
    );
  }
}
