import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bankapp/colors/colors.dart';

class MyProfile extends StatelessWidget {
 const MyProfile({super.key});
 @override
 Widget build(BuildContext context) {
 return Scaffold(
backgroundColor: ColorConstants.background,
  appBar: AppBar(
   backgroundColor: ColorConstants.background,
    elevation: 0,
       leading: IconButton(
 icon: Icon(Icons.arrow_back, color: ColorConstants.textcolor),
  onPressed: () => Navigator.pop(context),
        ),
       centerTitle: true,
    title: Text(
'Profile',
 style: GoogleFonts.poppins(
     fontSize: 20,
   fontWeight: FontWeight.bold,
color: ColorConstants.textcolor,
          ),
        ),
  actions: const [
         Padding(
            padding: EdgeInsets.only(right: 16.0),
      child: CircleAvatar(
        radius: 18,
           backgroundColor: Colors.grey,
  child: Icon(Icons.person_outline, color: Colors.white),
          ),
        ),
    ],
      ),
     body: Padding(
 padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Stack(
    children: [
     Positioned(
 top: 128,
        left: 20,
     child: Opacity(
        opacity: 0.12,
              child: Container(
     width: 70,
         height: 70,
        decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(45),
          ),
        ),
     ),
      ),
   Column(
   crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     const SizedBox(height: 20),
        Row(
    children: [
  const CircleAvatar(
  radius: 24,
     backgroundImage: AssetImage(
     'lib/assets/images/profile.png',
    ),
 backgroundColor: Colors.transparent,
   ),
 const SizedBox(width: 12),
       Column(
 crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
  'Welcome back,',
     style: GoogleFonts.poppins(
      color: ColorConstants.silenttextcolor,
fontSize: 14,
    ),
  ),
 Text(
   'Tanya Myroniuk',
     style: GoogleFonts.poppins(
     color: ColorConstants.textcolor,
     fontSize: 18,
   fontWeight: FontWeight.w600,
    ),
   ),
 ],
       ),
      ],
    ),
 const SizedBox(height: 30),
     Expanded(
      child: Padding(
       padding: EdgeInsets.zero,
       child: ListView(
     children: [
     buildSettingTile(
 Icons.person_outline,
     'Personal Information',
   ),
 buildSettingTile(
 Icons.account_balance_wallet_outlined,
     'Payment Preferences',
   ),
      buildSettingTile(Icons.credit_card, 'Banks and Cards'),
 buildSettingTile(
 Icons.notifications_outlined,
     'Notifications',
 trailing: Container(
 padding: const EdgeInsets.all(6),
 decoration: const BoxDecoration(
 color: Colors.red,
shape: BoxShape.circle,
 ),
 child: Text(
   '2',
style: TextStyle(
color: ColorConstants.textcolor,
     fontSize: 12,
),
),
 ),
 ),
  buildSettingTile(
Icons.message_outlined,
     'Message Center',
 ),
 buildSettingTile(Icons.location_on_outlined, 'Address'),
   buildSettingTile(Icons.settings_outlined, 'Settings'),
 ],
     ),
 ),
 ),
 ],
    ),
   ],
        ),
      ),
    );
  }

Widget buildSettingTile(IconData icon, String title, {Widget? trailing}) {
  return Column(
    children: [
       ListTile(
      leading: Icon(icon, color: ColorConstants.silenttextcolor),
     title: Text(
 title,
     style: GoogleFonts.poppins(
    color: ColorConstants.textcolor,
   fontSize: 14,
        ),
      ),
 trailing: trailing ??
     const Icon(
 Icons.arrow_forward_ios,
         size: 16,
      color: Colors.white54,
      ),
      onTap: () {},
    ),
 Divider(color: ColorConstants.divider),
    ],
  );
 }
}
