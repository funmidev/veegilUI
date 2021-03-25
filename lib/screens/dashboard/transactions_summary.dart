import 'package:flutter/material.dart';
import 'package:veegil_test/utils/constants.dart';
import 'package:veegil_test/screens/dashboard/transactions.dart';
import 'package:veegil_test/screens/dashboard/transaction_item.dart';

class TransactionsSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transactions",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Transactions()),
                  );
                },
                child: Icon(
                  Icons.arrow_forward,
                  color: kPrimaryColor,
                ),
              ),
            ],
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
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  TransactionItem(
                    imageUrl: "assets/images/user_2.jpg",
                    fullName: "Nakeel ",
                    status: "received",
                    amount: "114.00",
                  ),
                  TransactionItem(
                    imageUrl: "assets/images/user_3.jpg",
                    fullName: "Jesam Egbe",
                    status: "received",
                    amount: "70.16",
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
    );
  }
}
