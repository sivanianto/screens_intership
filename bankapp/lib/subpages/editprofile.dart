import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bankapp/colors/colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _nameController = TextEditingController(text: "Tanya Myroniuk");
  final _emailController = TextEditingController(
    text: "tanya.myroniuk@gmail.com",
  );
  final _phoneController = TextEditingController(text: "+8801712663389");

  String savedName = "";
  String savedEmail = "";
  String savedPhone = "";

  void _saveChanges() {
    setState(() {
      savedName = _nameController.text;
      savedEmail = _emailController.text;
      savedPhone = _phoneController.text;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Profile updated successfully!',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: ColorConstants.button,
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.background,
      appBar: AppBar(
        backgroundColor: ColorConstants.background,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Edit Profile",
          style: GoogleFonts.poppins(
            color: ColorConstants.textcolor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage(
                      'lib/assets/images/profile.png',
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    _nameController.text,
                    style: GoogleFonts.poppins(
                      color: ColorConstants.textcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Senior Designer",
                    style: GoogleFonts.poppins(
                      color: ColorConstants.silenttextcolor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Full Name",
              style: GoogleFonts.poppins(
                color: ColorConstants.silenttextcolor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 14),
            Row(
              children: [
                Icon(Icons.person_outlined, color: Colors.grey, size: 18),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    controller: _nameController,
                    style: GoogleFonts.poppins(
                      color: ColorConstants.textcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'Enter your name',
                      hintStyle: GoogleFonts.poppins(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Divider(color: ColorConstants.divider),
            SizedBox(height: 16),
            Text(
              "Email Address",
              style: GoogleFonts.poppins(
                color: ColorConstants.silenttextcolor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 14),
            Row(
              children: [
                Icon(Icons.mail_outline, color: Colors.grey, size: 18),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    controller: _emailController,
                    style: GoogleFonts.poppins(
                      color: ColorConstants.textcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'Enter your email',
                      hintStyle: GoogleFonts.poppins(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Divider(color: ColorConstants.divider),
            SizedBox(height: 10),
            Text(
              "Phone Number",
              style: GoogleFonts.poppins(
                color: ColorConstants.silenttextcolor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 14),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.grey, size: 18),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    controller: _phoneController,
                    style: GoogleFonts.poppins(
                      color: ColorConstants.textcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'Enter your phone number',
                      hintStyle: GoogleFonts.poppins(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Divider(color: ColorConstants.divider),
            SizedBox(height: 10),
            Text(
              "Birth Date",
              style: GoogleFonts.poppins(
                color: ColorConstants.silenttextcolor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "28",
                  style: GoogleFonts.poppins(
                    color: ColorConstants.textcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "September",
                  style: GoogleFonts.poppins(
                    color: ColorConstants.textcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "2000",
                  style: GoogleFonts.poppins(
                    color: ColorConstants.textcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Divider(color: ColorConstants.divider),
            SizedBox(height: 30),
            Center(
              child: Text(
                "Joined 28 Jan 2021",
                style: GoogleFonts.poppins(
                  color: ColorConstants.silenttextcolor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.button,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: _saveChanges,
                child: Text(
                  "Save Changes",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.textcolor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
