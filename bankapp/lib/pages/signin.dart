import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bankapp/colors/colors.dart';
import 'signup.dart';
import 'homepage.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
bool _obscurePassword = true;

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: ColorConstants.background,
appBar: AppBar(
  backgroundColor: Colors.transparent,
      elevation: 0,
leading: const BackButton(color: Colors.white),
),
body: SingleChildScrollView(
  padding: const EdgeInsets.all(24.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

  Text("Sign In",
style: GoogleFonts.poppins(
fontSize: 32,
    fontWeight: FontWeight.bold,
color: Colors.white)),

SizedBox(height: 31),

Text("Email Address", style: GoogleFonts.poppins(color: Colors.grey)),

SizedBox(height: 9),
    TextField(
style: const TextStyle(color: Colors.white),
decoration: InputDecoration(
  hintText: "xx@gmail.com",
      hintStyle: GoogleFonts.poppins(color: Colors.white),
prefixIcon: const Icon(Icons.email, color: Colors.white),
enabledBorder: const UnderlineInputBorder(
borderSide: BorderSide(color: Colors.grey),
),
),
),

SizedBox(height: 22),
Text("Password", style: GoogleFonts.poppins(color: Colors.grey)),
SizedBox(height: 10),

TextField(
obscureText: _obscurePassword,
style: const TextStyle(color: Colors.white),
decoration: InputDecoration(
prefixIcon: const Icon(Icons.lock, color: Colors.white),
suffixIcon: IconButton(
icon: Icon(
  _obscurePassword
      ? Icons.visibility_off
      : Icons.visibility,
  color: Colors.white,
),
onPressed: () {
  setState(() {
    _obscurePassword = !_obscurePassword;
  });
},
),
enabledBorder: const UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.grey),
),
),
),

     SizedBox(height: 37),

SizedBox(
width: double.infinity,
height: 56,
child: ElevatedButton(
onPressed: () {
  Navigator.push(
context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
},
style: ElevatedButton.styleFrom(
  backgroundColor: ColorConstants.button,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
),
child: Text("Sign In",
style: GoogleFonts.poppins(
color: Colors.white,
fontSize: 18,
fontWeight: FontWeight.bold,
)),
),
),

SizedBox(height: 22),

Center(
child: GestureDetector(
onTap: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => SignUp()),
);
},
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text("I’m a new user. ",
style: GoogleFonts.poppins(
  color: ColorConstants.silenttextcolor,
fontSize: 14)),
Text("Sign Up",
style: GoogleFonts.poppins(
color: ColorConstants.button,
fontWeight: FontWeight.w600,
)),
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
