import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bankapp/colors/colors.dart';
import 'package:bankapp/tiles/transactiontile.dart';
import 'package:bankapp/tiles/card_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.background,
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('lib/assets/images/profile.png'),
                ),
                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back,',
                        style: GoogleFonts.poppins(
                          color: ColorConstants.silenttextcolor,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Tanya Myroniuk',
                        style: GoogleFonts.poppins(
                          color: ColorConstants.textcolor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                Icon(Icons.search, color: Colors.white),
              ],
            ),

            const SizedBox(height: 31.85),

            const CardTile(),

            const SizedBox(height: 28),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  _ActionItem(icon: Icons.send, label: 'Sent'),
                  _ActionItem(icon: Icons.call_received, label: 'Receive'),
                  _ActionItem(icon: Icons.monetization_on, label: 'Loan'),
                  _ActionItem(icon: Icons.add_circle_outline, label: 'Topup'),
                ],
              ),
            ),

            const SizedBox(height: 28),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction',
                  style: GoogleFonts.poppins(
                    color: ColorConstants.textcolor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'See All',
                  style: GoogleFonts.poppins(
                    color: ColorConstants.button,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TransactionTile(
                      title: 'Apple Store',
                      subtitle: 'Entertainment',
                      amount: '- \$5.99',
                      icon: Icons.shopping_bag,
                      amountColor: ColorConstants.textcolor,
                    ),
                    SizedBox(height: 8),
                    TransactionTile(
                      title: 'Spotify',
                      subtitle: 'Music',
                      amount: '- \$12.99',
                      icon: Icons.music_note,
                      amountColor: ColorConstants.textcolor,
                    ),
                    SizedBox(height: 8),

                    TransactionTile(
                      title: 'Money Transfer',
                      subtitle: 'Transaction',
                      amount: '+ \$300.00',
                      icon: Icons.compare_arrows,
                      amountColor: ColorConstants.button,
                    ),
                    SizedBox(height: 8),

                    TransactionTile(
                      title: 'Grocery',
                      subtitle: 'Daily Needs',
                      amount: '- \$88.00',
                      icon: Icons.local_grocery_store,
                      amountColor: ColorConstants.textcolor,
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

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: ColorConstants.icon,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: GoogleFonts.poppins(
            color: ColorConstants.textcolor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
