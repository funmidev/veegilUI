import 'package:flutter/material.dart';
import 'package:veegil_test/utils/constants.dart';
import 'package:veegil_test/screens/dashboard/balance.dart';

class BalanceSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: size.width / 2,
          margin: EdgeInsets.symmetric(vertical: 16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Text(
                      "Account Number",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      r"09039300506***",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 50,
                  height: 50,
                  // margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/user_4.jpg",
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),

              ///
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Available Balance",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      r"₦ 2,219.85",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Balance()),
                  );
                },
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Center(
                      child: Icon(
                        Icons.money,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          "Estimated total of all currencies",
          style: TextStyle(
            color: kGreyColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
