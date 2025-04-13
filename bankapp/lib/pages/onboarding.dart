import 'package:bankapp/colors/colors.dart';
import 'package:bankapp/pages/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen   extends StatefulWidget {
const OnboardingScreen({super.key});

  @override
State<OnboardingScreen> createState()=>_OnboardingScreenState();
}

   class _OnboardingScreenState extends State<OnboardingScreen>{
final PageController _controller = PageController();
        int _currentPage = 0;

final List<Map<String, String>> _onboardingData = [
  {
    "image":"lib/assets/images/gr_one.png",
      "title":"Fastest Payment in\nthe world",
        "description":
    "Integrate multiple payment methods to help you up the process quickly",
  },
 {
    "image": "lib/assets/images/gr_two.png",
"title":"The most Secure\nPlatform for Customer",
"description":"Built-in Fingerprint, face recognition and more, keeping you\ncompletely safe",
  },
{
  "image":"lib/assets/images/gr_three.png",
  "title":"Paying for Everything is \nEasy and Convenient",
    "description":
  "Built-in Fingerprint, face recognition \nand more, keeping you completely safe",
},
];

  void _nextPage() {
if (_currentPage < _onboardingData.length - 1) {
  _controller.nextPage(
duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
  );
    } else {
        Navigator.push(
 context,
   MaterialPageRoute(builder: (context)=>Signin()),
  );
}
}

@override
    Widget build(BuildContext context){
  return Scaffold(
backgroundColor: ColorConstants.background,
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(height: 100),
            Expanded(
              child: PageView.builder(
      controller:_controller,
itemCount:_onboardingData.length,
    onPageChanged: (index) {
  setState(() => _currentPage = index);
        },
  itemBuilder:
(context,index)=>Padding(
    padding:EdgeInsets.symmetric(horizontal:20),
              child: Column(
          children: [
     SizedBox(
  height:250,
            width:double.infinity,
         child: Image.asset(
  _onboardingData[index]['image']!,
 fit:BoxFit.contain,
alignment: Alignment.center,
              ),
              ),
SizedBox(height: 80),
    Row(
mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
  _onboardingData.length,
      (dotIndex)=>AnimatedContainer(
  duration:Duration(milliseconds:300),
margin: EdgeInsets.symmetric(horizontal: 3),
    width: _currentPage == dotIndex ? 19 : 6,
 height: 6,
decoration: BoxDecoration(
  color: _currentPage==dotIndex
? ColorConstants.button
 : ColorConstants.dotmain,
          borderRadius: BorderRadius.circular(5),
),
),
),
),
      SizedBox(height: 40),
      Text(
_onboardingData[index]['title']!,
textAlign: TextAlign.center,
    style: GoogleFonts.poppins(
      fontSize: 28,
fontWeight: FontWeight.bold,
color: Colors.white,
),
),
  SizedBox(height: 10),
          Padding(
padding: EdgeInsets.symmetric(horizontal: 40),
child: Text(
_onboardingData[index]['description']!,
textAlign: TextAlign.center,
    style: TextStyle(fontSize: 16, color: Colors.grey),
  ),
),
],
),
),
),
          ),
      SizedBox(height: 40),
  GestureDetector(
onTap: _nextPage,
child: Container(
width:335,
height:56,
  decoration: BoxDecoration(
 color: ColorConstants.button,
 borderRadius: BorderRadius.circular(16),
),
 child: Center(
child: Text(
"Next",
    style: TextStyle(
color:Colors.white,
 fontSize:18,
fontWeight: FontWeight.bold,
),
),
),
),
),
SizedBox(height:40),
],
),
);}}
