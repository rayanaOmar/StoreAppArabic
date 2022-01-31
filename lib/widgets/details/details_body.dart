
import 'package:flutter/material.dart';
import 'package:store_app_arabic/constants.dart';
import 'package:store_app_arabic/models/product.dart';
import 'package:store_app_arabic/widgets/details/color_dot.dart';
import 'package:store_app_arabic/widgets/details/product_image.dart';

class DetailsBody extends StatelessWidget {

  final Product product;
  const DetailsBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //to provide us the height and the width of the screen.
    Size size = MediaQuery.of(context).size / 1.2;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: ProductImage(
                      size: size, image: product.image)),
              //add the three dots
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ColorDot(
                      fillColor: kTextColor,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: kTextLightColor,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillColor: kTextLightColor,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              //The title of product
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              // add the price
              Text('السعر: \$${product.price}',
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        //description of product
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding / 2
          ),
          child:  Text(
            product.description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
