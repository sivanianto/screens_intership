import 'package:bankapp/colors/colors.dart';
import 'package:bankapp/tiles/transactiontile.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.background,
      appBar: AppBar(
        backgroundColor: ColorConstants.background,
        foregroundColor: ColorConstants.background,
        elevation: 0,
        title: Center(
          child: Text(
            'Statistics',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ColorConstants.textcolor,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications, color: ColorConstants.textcolor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(
              'Current Balance',
              style: TextStyle(
                color: ColorConstants.silenttextcolor,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '\$8,545.00',
              style: TextStyle(
                color: ColorConstants.textcolor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),

            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorConstants.cardcolor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  'Chart Placeholder',
                  style: TextStyle(color: ColorConstants.silenttextcolor),
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
                  ['Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar']
                      .map(
                        (month) => Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            color:
                                month == 'Jan'
                                    ? ColorConstants.button
                                    : Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            month,
                            style: TextStyle(
                              color:
                                  month == 'Jan'
                                      ? ColorConstants.textcolor
                                      : ColorConstants.silenttextcolor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction',
                  style: TextStyle(
                    color: ColorConstants.textcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: ColorConstants.button, fontSize: 14),
                ),
              ],
            ),

            Expanded(
              child: ListView(
                children: [
                  TransactionTile(
                    icon: Icons.apple,
                    title: "Apple Store",
                    subtitle: "Entertainment",
                    amount: "- \$5.99",
                    amountColor: ColorConstants.textcolor,
                  ),
                  SizedBox(height: 10),
                  TransactionTile(
                    icon: Icons.music_note,
                    title: "Spotify",
                    subtitle: "Music",
                    amount: "- \$12.99",
                    amountColor: ColorConstants.textcolor,
                  ),
                  SizedBox(height: 10),

                  TransactionTile(
                    icon: Icons.download,
                    title: "Money Transfer",
                    subtitle: "Transaction",
                    amount: "\$300",
                    amountColor: ColorConstants.button,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
