import 'package:bankapp/colors/colors.dart';
 import 'package:bankapp/subpages/editprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
    import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
@override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
bool isBiometricEnabled = false;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: ColorConstants.background,
    appBar: AppBar(
         backgroundColor: ColorConstants.background,
  elevation: 0,
leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
     onPressed: () {},
      ),
        title: Text(
        'Settings',
    style: GoogleFonts.poppins(
      color: ColorConstants.textcolor,
         fontWeight: FontWeight.w500,
      fontSize: 18,
      ),
        ),
     centerTitle: true,
       actions: [
          Padding(
        padding: EdgeInsets.only(right: 16),
              child: CircleAvatar(
          backgroundColor: ColorConstants.background,
              child: Icon(
              Icons.logout_outlined,
          color: ColorConstants.textcolor,
            ),
          ),
      ),
        ],
    ),
      body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 18),
        children: [
      const SizedBox(height: 20),
        Text(
        'General',
        style: GoogleFonts.poppins(
        color: ColorConstants.silenttextcolor,
             fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
     SizedBox(height: 8),
              _buildListTile(context, 'Language', trailingText: 'English'),
      Divider(color: ColorConstants.silenttextcolor.withOpacity(0.3)),

  Padding(
         padding: EdgeInsets.zero,
          child: _buildListTile(
           context,
        'My Profile',
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(
        builder: (context) => const MyProfile()),
              );
        },
          ),
        ),
     Divider(color: ColorConstants.silenttextcolor.withOpacity(0.3)),

            _buildListTile(context, 'Contact Us'),
      Divider(color: ColorConstants.silenttextcolor.withOpacity(0.3)),

        const SizedBox(height: 20),
         Text(
        'Security',
             style: GoogleFonts.poppins(
          color: ColorConstants.silenttextcolor,
     fontWeight: FontWeight.w400,
      fontSize: 14,
            ),
          ),

        _buildListTile(context, 'Change Password'),
  Divider(color: ColorConstants.silenttextcolor.withOpacity(0.3)),
               _buildListTile(context, 'Privacy Policy'),
      Divider(color: ColorConstants.silenttextcolor.withOpacity(0.3)),

       Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
            'Choose what data you share with us',
        style: GoogleFonts.poppins(
            color: ColorConstants.silenttextcolor,
        fontSize: 12,
           fontWeight: FontWeight.w400,
              ),
          ),
        ),

    SwitchListTile(
        value: isBiometricEnabled,
        onChanged: (value) {
          setState(() {
           isBiometricEnabled = value;
        });
      },
      title: Text(
      'Biometric',
            style: GoogleFonts.poppins(
            color: ColorConstants.textcolor,
         fontWeight: FontWeight.w400,
          ),
        ),
        activeColor: ColorConstants.button,
     contentPadding: EdgeInsets.zero,
    ),
      ],
    ),
    );
  }

    ListTile _buildListTile(
      BuildContext context,
      String title, {
          String? trailingText,
  VoidCallback? onTap,
      }) {
        return ListTile(
      contentPadding: EdgeInsets.zero,
         title: Text(
        title,
       style: GoogleFonts.poppins(
        color: ColorConstants.textcolor,
        fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      trailing: CupertinoButton(
         padding: EdgeInsets.zero,
              child: trailingText != null
          ? Text(
            trailingText,
           style: GoogleFonts.poppins(
        color: Colors.grey,
               fontSize: 14,
        fontWeight: FontWeight.w400,
          ),
      )
      : Icon(
              Icons.arrow_forward_ios,
          color: ColorConstants.silenttextcolor,
               size: 10,
            ),
         onPressed: onTap,
    ),
        onTap: onTap,
      );
  }
