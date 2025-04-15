import 'package:bankapp/tiles/card_tile.dart';
import 'package:bankapp/tiles/transactiontile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bankapp/colors/colors.dart';

class MyCardPage extends StatefulWidget {
 const MyCardPage({super.key});

  @override
   State<MyCardPage> createState()=> _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
double _sliderValue = 4600;

@override
    Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: ColorConstants.background,
      appBar: AppBar(
        backgroundColor: ColorConstants.background,
     elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back,
          color: Colors.white),
          onPressed: () {},
      ),
        title: Text("My Cards",style: GoogleFonts.poppins(
      color: Colors.white,
              fontSize: 18,
     fontWeight: FontWeight.w600,),),
      centerTitle: true,
    actions: [
  Padding(padding: EdgeInsets.only(right: 16.0),
          child: Icon(Icons.add, color: Colors.white),
        ),
     ],
),
body: SafeArea(
 child: SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
        children: [
     CardTile(),
             SizedBox(height: 16),
  _buildTransactionList(),
              SizedBox(height: 16),
                _buildSpendingLimitSlider(),
        ],
        ),
      ),
    ),
 );
  }

  Widget _buildTransactionList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
  children: [
      TransactionTile(
      title: "Apple Store",
subtitle: "Entertainment",
         amount: "- \$5.99",
      icon: Icons.apple,
      amountColor: Colors.redAccent,
        ),
    TransactionTile(
  title: "Spotify",
   subtitle: "Music",
 amount: "- \$12.99",
      icon: Icons.music_note,
      amountColor: Colors.redAccent,
        ),
     TransactionTile(
   title: "Grocery",
         subtitle: "Shopping",
   amount: "- \$88",
      icon: Icons.shopping_cart,
  amountColor: Colors.redAccent,
 ),
  ],
  );
  }

  Widget _buildSpendingLimitSlider() {
 return Column(
 crossAxisAlignment: CrossAxisAlignment.start,
   children: [
   Text("Monthly spending limit",
        style: GoogleFonts.poppins(
         color: ColorConstants.textcolor,
       fontSize: 16,
  fontWeight: FontWeight.w600,
     ),
     ),
        SizedBox(height: 20),
     Container(
      decoration: BoxDecoration(
  color: Color(0xFF1E1E2D),
          borderRadius: BorderRadius.circular(18),
        ),
    padding: EdgeInsets.all(20),
       child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Amount: \$${_sliderValue.toStringAsFixed(2)}",
      style: GoogleFonts.poppins(
         color: ColorConstants.textcolor,
      fontSize: 14,
     fontWeight: FontWeight.w500,
         ),
     ),
       SizedBox(height: 4),
      Slider(
     value: _sliderValue,
    min: 0,
     max: 10000,
        activeColor: Colors.white,
        thumbColor: ColorConstants.button,
inactiveColor: Colors.white24,
      onChanged: (value) {
         setState(() {
     _sliderValue = value;
              });
            },
          ),
        Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
         Text("\$0",
         style: GoogleFonts.poppins(
       color: ColorConstants.textcolor,
          fontSize: 12,
             ),
              ),
             Text("\$${_sliderValue.toStringAsFixed(0)}",
      style: GoogleFonts.poppins(
          color: ColorConstants.textcolor,
             fontSize: 12,
                ),
                ),
           Text("\$10,000",
     style: GoogleFonts.poppins(
          color: ColorConstants.textcolor,
       fontSize: 12,
      ),
        ),
           ],
        ),
       ],
     ),
   )
  ];
  }
}
