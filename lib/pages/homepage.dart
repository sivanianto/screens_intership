import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bankapp/colors/colors.dart';
import 'package:bankapp/tiles/transactiontile.dart';
import 'package:bankapp/tiles/card_tile.dart';

class HomePage extends StatelessWidget {
 const HomePage({super.key});

 @override
Widget build(BuildContext context) {
    return SafeArea(
child: Scaffold(
     backgroundColor: ColorConstants.background,
body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
 children: [
   const SizedBox(height: 20),
          Row(
      children: [
        CircleAvatar(
     backgroundColor: Colors.white10,
              radius: 24,
          child: Icon(Icons.person, color: Colors.white),
        ),
       SizedBox(width: 12),
Expanded(
    child: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
     children: [
     Text(
         'Welcome back,',
         style: GoogleFonts.poppins(
     color: ColorConstants.silenttextcolor,
     fontSize: 14,
         ),
       ),
       Text('Tanya Myroniuk',
       style: GoogleFonts.poppins(
           color: ColorConstants.textcolor,
       fontSize: 18,
     fontWeight: FontWeight.w600,
           ),
     overflow: TextOverflow.ellipsis,
        ),
        ],
     ),
),
        Icon(Icons.search, color: Colors.white),
      ],
    ),
      const SizedBox(height: 28),
CardTile(),
     const SizedBox(height: 28),
 Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
 children: [
_ActionItem(icon: Icons.send, label: 'Sent'),
    _ActionItem(icon: Icons.call_received, label: 'Receive'),
 _ActionItem(
        icon: Icons.monetization_on,
   label: 'Loan'),
        _ActionItem(icon: Icons.add_circle_outline, label: 'Topup'),
      ],
    ),
     SizedBox(height: 28),
    Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: [
Text('Transaction',
        style: GoogleFonts.poppins(
 color: ColorConstants.textcolor,
  fontSize: 16,
     fontWeight: FontWeight.w600,
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
     SizedBox(height: 12),
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
   TransactionTile(
      title: 'Spotify',
 subtitle: 'Music',
     amount: '- \$12.99',
 icon: Icons.music_note,
 amountColor: ColorConstants.textcolor,
 ),
      TransactionTile(
 title: 'Money Transfer',
subtitle: 'Transaction',
    amount: '+ \$300.00',
 icon: Icons.compare_arrows,
  amountColor: ColorConstants.button,
),
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
 radius: 22,
    backgroundColor: Colors.white10,
      child: Icon(icon, color: Colors.white),
       ),
        SizedBox(height: 6),
    Text(label,
style: GoogleFonts.poppins(
color: ColorConstants.textcolor,
  fontSize: 12,
   ),
     ),
      ],
     );
   }
}
