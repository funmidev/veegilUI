import 'package:flutter/material.dart';
import 'package:veegil_test/shared/widgets.dart';
import 'package:veegil_test/screens/dashboard/balance_summary.dart';
import 'package:veegil_test/screens/dashboard/transactions_summary.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Dashboard"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            BalanceSummary(),

            Expanded(
              child: TransactionsSummary(),
            ),

          ],
        ),
      )
    );
  }
}