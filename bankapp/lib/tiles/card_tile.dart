import 'package:flutter/material.dart'; 
import 'package:google_fonts/google_fonts.dart'; 
import 'package:bankapp/colors/colors.dart';

class CardTile extends StatelessWidget {
    const CardTile({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
 width: double.infinity,
 decoration: BoxDecoration(
   color: ColorConstants.cardcolor.withOpacity(0.55),
 borderRadius: BorderRadius.circular(24),
), 
   padding: EdgeInsets.all(20), 
   child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Row(
         children: [
           Icon(Icons.credit_card_rounded, color: Colors.white),
   Spacer(),
   Icon(Icons.wifi, color: Colors.white),
        ],
        ), 
     SizedBox(height: 20), 
        Text(
'4562  1122  4595  7852',
style: TextStyle(
   color: ColorConstants.textcolor,
    fontSize: 22,
 letterSpacing: 1.8,
    fontWeight: FontWeight.w500,
   ),
  ), 
  SizedBox(height: 14), 
  Text(
   'AR Jonson',
  style: GoogleFonts.poppins(
    color: ColorConstants.textcolor,
    fontSize: 13,
   fontWeight: FontWeight.w500,
  ),
 ), 
  SizedBox(height: 12), 
  Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
        Row(
          children: [
            Column(
 crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Text(
        'Expiry Date',
        style: TextStyle(
 color: ColorConstants.silenttextcolor,
         fontSize: 11,
       ),
      ),
     Text(
      '24/2000',
    style: TextStyle(
       color: ColorConstants.textcolor,
     fontSize: 13,
      ),
     ),
    ],
  ),
   SizedBox(width: 30),
   Column(
     crossAxisAlignment: CrossAxisAlignment.start,
       children: [
    Text(
      'CVV',
   style: TextStyle(
    color: ColorConstants.silenttextcolor,
   fontSize: 11,
    ),
     ),
      Text(
       '6986',
     style: TextStyle(
       color: ColorConstants.textcolor,
      fontSize: 13,
      ),
     ),
    ],
   ),
  ],
), 
   Column(
     crossAxisAlignment: CrossAxisAlignment.center,
       children: [
       SizedBox(
       width: 40,
       height: 20,
       child: Stack(
        children: [
         Positioned(
            left: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: Colors.red,
                 shape: BoxShape.circle,
                ),
              ),
             ),
          Positioned(
          left: 16,
          child: Container(
           width: 20,
           height: 20,
         decoration: BoxDecoration(
         color: Colors.orange,
          shape: BoxShape.circle,
            ),
             ),
          ),
        ],
       ),
     ),
     SizedBox(height: 4), 
     Text(
      'Mastercard',
      style: GoogleFonts.poppins(
          color: ColorConstants.textcolor,
           fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
     ],
   ),
 ],
),
 ],
),
 );
}
}
