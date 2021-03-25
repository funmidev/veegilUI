import 'package:flutter/material.dart';
import 'package:veegil_test/utils/constants.dart';
import 'package:veegil_test/shared/custom_field.dart';
import 'package:veegil_test/screens/dashboard/option_pill.dart';
import 'package:veegil_test/screens/dashboard/transaction_item.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Transactions",
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.filter_list,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CustomField(
              hintText: "Name, Email or Mobile number",
              iconData: Icons.search,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                OptionPill(
                  text: "All",
                  selected: true,
                ),

                OptionPill(
                  text: "Payments in",
                  selected: false,
                ),

                OptionPill(
                  text: "Payments out",
                  selected: false,
                ),

              ],
            ),

            SizedBox(
              height: 16,
            ),

            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "Pending",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "10/03/2021",
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 8,
                    ),

                    TransactionItem(
                      imageUrl: "assets/images/user_0.jpg",
                      fullName: "Rebecca Akeem",
                      status: "received",
                      amount: "57.01",
                    ),

                    TransactionItem(
                      imageUrl: "assets/images/user_1.jpg",
                      fullName: "Samuel Tochukwu",
                      status: "sended",
                      amount: "19.63",
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Divider(
                      color: kPrimaryColor,
                      height: 1,
                      thickness: 1,
                    ),

                    SizedBox(
                      height: 32,
                    ),

                    Text(
                      "Completed",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "11/03/2021",
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 8,
                    ),

                    TransactionItem(
                      imageUrl: "assets/images/user_2.jpg",
                      fullName: "Janice Opeyemi",
                      status: "received",
                      amount: "114.00",
                    ),

                    TransactionItem(
                      imageUrl: "assets/images/user_3.jpg",
                      fullName: "Jesam Egbe",
                      status: "received",
                      amount: "70.16",
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "9/03/2021",
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 8,
                    ),

                    TransactionItem(
                      imageUrl: "assets/images/user_4.jpg",
                      fullName: "Funmi Tope",
                      status: "received",
                      amount: "44.50",
                    ),

                    TransactionItem(
                      imageUrl: "assets/images/user_5.jpg",
                      fullName: "Rachel Adeleke",
                      status: "sended",
                      amount: "85.50",
                    ),

                    TransactionItem(
                      imageUrl: "assets/images/user_2.jpg",
                      fullName: "Kamila Seun",
                      status: "received",
                      amount: "155.00",
                    ),


                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}