import 'package:bankapp/colors/colors.dart';
import 'package:bankapp/subpages/myprofile.dart';
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
        surfaceTintColor: ColorConstants.background,
        automaticallyImplyLeading: false,

        elevation: 0,

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
            padding: const EdgeInsets.only(right: 16),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 8),
              _buildListTile(context, 'Language', trailingText: 'English'),
              Divider(color: ColorConstants.silenttextcolor.withOpacity(0.3)),

              _buildListTile(
                context,
                'My Profile',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyProfile()),
                  );
                },
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

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Choose what data you share with us',
                  style: TextStyle(
                    color: Colors.grey,
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
        ),
      ),
    );
  }

  Widget _buildListTile(
    BuildContext context,
    String title, {
    String? trailingText,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Material(
        color: ColorConstants.background,
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    color: ColorConstants.textcolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                trailingText != null
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
