import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bankapp/colors/colors.dart';
import 'package:bankapp/pages/bottomnavbar.dart';
import 'package:bankapp/tiles/transactiontile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: ColorConstants.background,
  bottomNavigationBar: BottomNavBar(),
    body: SafeArea(
     child: Padding(
     padding: EdgeInsets.symmetric(horizontal: 20),
   child: Column(
 children: [

      SizedBox(height: 20),
    Row(children: [
   CircleAvatar(
  backgroundColor: Colors.white10,
      child: Icon(Icons.person, color: Colors.white),
   radius: 24,
 ),
  SizedBox(width: 12),
        Expanded(
    child: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Text('Welcome back,',
    style: GoogleFonts.poppins(
    color: ColorConstants.silenttextcolor,
     fontSize: 14,
        ),
       ),
   Text('Tanya Myroniuk',
 overflow: TextOverflow.ellipsis,
     style: GoogleFonts.poppins(
    color: ColorConstants.textcolor,
 fontSize: 18,
     fontWeight: FontWeight.w600,
      ),
        ),
     ],
      ),
   ),
     Icon(Icons.search, color: Colors.white),
   ],
     ),

  SizedBox(height: 24),

     Container(
    width: double.infinity,
  height: 199,
       padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(24),
      color: Colors.white.withOpacity(0.05),
         ),
      child: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
   children: [
  
 Text('4562   1122   4595   7852',
  style: GoogleFonts.poppins(
 color: ColorConstants.textcolor,
 fontSize: 18,
 letterSpacing: 2,
    ),
   ),
   SizedBox(height: 12),
 Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
   Flexible(
      child: Text('AR Jonson',
  overflow: TextOverflow.ellipsis,
 style: GoogleFonts.poppins(
   color: ColorConstants.textcolor,
    ),
     ),
   ),
    Text('24/2000',
 style: GoogleFonts.poppins(
     color: ColorConstants.silenttextcolor,
 fontSize: 12,
       ),
     ),
        ],
        ),
       ],
        ),
       ),

      SizedBox(height: 28),

    Row(
 mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
  _actionItem(Icons.send, 'Sent'),
  _actionItem(Icons.call_received, 'Receive'),
    _actionItem(Icons.monetization_on, 'Loan'),
  _actionItem(Icons.add_circle_outline, 'Topup'),
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
    Text('See All',
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

 Widget _actionItem(IconData icon, String label) {
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
