import 'package:flutter/material.dart';
import 'package:store_app_arabic/constants.dart';
import 'package:store_app_arabic/models/product.dart';
import 'package:store_app_arabic/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {

  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTextColor,
      appBar: DetailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar DetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        icon: const Icon(Icons.arrow_back),
        color: kTextColor,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
