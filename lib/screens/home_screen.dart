import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app_arabic/constants.dart';
import 'package:store_app_arabic/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTextColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }
  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: kTextColor,
      elevation: 0,
      title: Text(
        'اهلا وسهلا',
        style: GoogleFonts.getFont('Almarai'),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ],
    );
  }
}