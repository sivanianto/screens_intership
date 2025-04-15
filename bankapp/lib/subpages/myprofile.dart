import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bankapp/colors/colors.dart';
import 'package:bankapp/subpages/editprofile.dart';
import 'package:bankapp/subpages/allcards.dart';

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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditProfile()),
                );
              },
              child: CircleAvatar(
                radius: 18,
                backgroundColor: ColorConstants.icon,
                child: const Icon(Icons.edit, color: Colors.white),
              ),
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
                Flexible(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      buildSettingTile(
                        Icons.person_outline,
                        'Personal Information',
                      ),
                      buildSettingTile(
                        Icons.account_balance_wallet_outlined,
                        'Payment Preferences',
                      ),
                      buildSettingTile(
                        Icons.credit_card,
                        'Banks and Cards',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AllCards(),
                            ),
                          );
                        },
                      ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSettingTile(
    IconData icon,
    String title, {
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return Column(
      children: [
        Material(
          color: ColorConstants.background,
          child: InkWell(
            onTap: onTap,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                children: [
                  Icon(icon, color: ColorConstants.silenttextcolor),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      title,
                      style: GoogleFonts.poppins(
                        color: ColorConstants.textcolor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  trailing ??
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.white54,
                      ),
                ],
              ),
            ),
          ),
        ),
        Divider(color: ColorConstants.divider),
      ],
    );
  }
}
