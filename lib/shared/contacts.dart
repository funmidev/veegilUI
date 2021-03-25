import 'package:flutter/material.dart';
import 'package:veegil_test/utils/constants.dart';
import 'package:veegil_test/shared/contact_item.dart';

class Contacts extends StatelessWidget {

  final Widget navigateTo;

  Contacts({@required this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          "Contacts",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(
          height: 16,
        ),

        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                
                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_0.jpg",
                  fullName: "Funmi Tope",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_1.jpg",
                  fullName: "Nakeel Lawal",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_2.jpg",
                  fullName: "Akinture Ayomide",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_3.jpg",
                  fullName: "Jesam Egbe",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_4.jpg",
                  fullName: "Olaide Benson",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_5.jpg",
                  fullName: "Rachel Adeleke",
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}