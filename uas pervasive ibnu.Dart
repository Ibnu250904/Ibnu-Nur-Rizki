import 'package:flutter/material.dart';
import 'package:login/widgets/social_login_button.dart';
import 'package:login/widgets/custom_text_field.dart';
import 'package:login/widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 411),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 141),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/background.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 38.5,
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                        const SizedBox(height: 22),
                        Container(
                          padding: const EdgeInsets.all(23),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Form(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 38),
                                CustomTextField(
                                  label: 'Username / Email',
                                  onChanged: (value) {},
                                ),
                                const SizedBox(height: 22),
                                CustomTextField(
                                  label: 'Password',
                                  isPassword: true,
                                  onChanged: (value) {},
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      color: Color(0xFF2D94FB),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                LoginButton(
                                  onPressed: () {},
                                ),
                                const SizedBox(height: 19),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      color: Color(0xFF2D94FB),
                                    ),
                                    children: [
                                      TextSpan(text: "Don't have an account? "),
                                      TextSpan(
                                        text: 'Sign Up',
                                        style: TextStyle(
                                          color: Color(0xFF2D94FB),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 22),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 104,
                                      height: 1,
                                      color: Colors.black,
                                    ),
                                    Container(
                                      width: 104,
                                      height: 1,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Or Continue with:',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                                const SizedBox(height: 29),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SocialLoginButton(
                                      icon: 'assets/google.png',
                                      onPressed: () {},
                                    ),
                                    SocialLoginButton(
                                      icon: 'assets/apple.png',
                                      onPressed: () {},
                                    ),
                                    SocialLoginButton(
                                      icon: 'assets/facebook.png',
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isPassword;
  final ValueChanged<String> onChanged;

  const CustomTextField({
    Key? key,
    required this.label,
    this.isPassword = false,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 12),
        ),
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Inter',
        ),
        onChanged: onChanged,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF2D94FB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.black),
        ),
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
      ),
      child: Text(
        'LOGIN',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontFamily: 'Inter',
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;

  const SocialLoginButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Image.asset(
        icon,
        width: 54,
        height: 54,
        fit: BoxFit.contain,
      ),
      iconSize: 54,
      padding: EdgeInsets.symmetric(horizontal: 10),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/social_login_buttons.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/sign_up_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 411),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/background.jpg',
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width * 1.78,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 21,
                    right: 21,
                    bottom: 32,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(19, 70, 19, 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(44),
                      ),
                      child: Form(
                        child: Column(
                          children: [
                            Text(
                              'SIGN UP',
                              style: TextStyle(
                                fontSize: 32,
                                fontFamily: 'Roboto Condensed',
                              ),
                            ),
                            const SizedBox(height: 35),
                            CustomTextField(
                              hintText: 'Enter Your Username / Email',
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 28),
                            CustomTextField(
                              hintText: 'Enter Your Password',
                              isPassword: true,
                            ),
                            const SizedBox(height: 42),
                            SignUpButton(
                              onPressed: () {
                                // Handle sign up
                              },
                            ),
                            const SizedBox(height: 30),
                            Text(
                              'Or Continue with:',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Inter',
                              ),
                            ),
                            const SizedBox(height: 29),
                            const SocialLoginButtons(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.textInputType = TextInputType.text,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            color: Colors.black,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 13),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SignUpButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF2D94FB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.black),
        ),
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
      ),
      child: Text(
        'SIGN UP',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontFamily: 'Inter',
        ),
      ),
    );
  }
}import 'package:flutter/material.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/google.png',
            width: 64,
            fit: BoxFit.contain,
          ),
          Image.asset(
            'assets/apple.png',
            width: 31,
            fit: BoxFit.contain,
          ),
          Image.asset(
            'assets/facebook.png',
            width: 54,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ScanQRScreen extends StatelessWidget {
  const ScanQRScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        constraints: const BoxConstraints(maxWidth: 411),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 0.562,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/e5fb76ba76b536cff11431f87f66102d6d44d104dc613f7d7ef3a946a9d22838?placeholderIfAbsent=true&apiKey=70369efe05ba4d8ba60d2397425d36e6',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(37, 124, 37, 240),
                    child: Column(
                      children: [
                        const Center(
                          child: Text(
                            'SCAN QR',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'Roboto Condensed',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(height: 13),
                        AspectRatio(
                          aspectRatio: 1.14,
                          child: Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/2e9ba5e403ae25f48bfd24a1bbdf7b771705a7c869650e5484a8fbe99c960579?placeholderIfAbsent=true&apiKey=70369efe05ba4d8ba60d2397425d36e6',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ScanQRTheme {
  static const backgroundColor = Colors.white;
  static const textColor = Colors.white;
  static const double maxWidth = 411;
  static const double fontSize = 40;
  
  static const textStyle = TextStyle(
    color: textColor,
    fontSize: fontSize,
    fontFamily: 'Roboto Condensed',
    fontWeight: FontWeight.w900,
  );
}
</
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraQRScreen extends StatefulWidget {
  const CameraQRScreen({Key? key}) : super(key: key);

  @override
  _CameraQRScreenState createState() => _CameraQRScreenState();
}

class _CameraQRScreenState extends State<CameraQRScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    _controller = CameraController(cameras[0], ResolutionPreset.high);
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return CameraPreview(_controller);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 31),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(61),
                    border: Border.all(color: Colors.black),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.fromLTRB(40, 37, 40, 17),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'CAMERA QR',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Roboto Condensed',
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/back_icon.png',
                              width: 34,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'BACK',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto Condensed',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
dependencies:
  flutter:
    sdk: flutter
  camera: ^0.10.5+5

flutter:
  assets:
    - assets/back_icon.png
  fonts:
    - family: Roboto Condensed
      fonts:
        - asset: assets/fonts/RobotoCondensed-Regular.ttf
        - asset: assets/fonts/RobotoCondensed-Bold.ttf
          weight: 700
        - asset: assets/fonts/RobotoCondensed-Black.ttf
          weight: 900
          import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RobotDetailsScreen extends StatelessWidget {
  const RobotDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width * 1.78,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://cdn.builder.io/api/v1/image/assets/TEMP/e5fb76ba76b536cff11431f87f66102d6d44d104dc613f7d7ef3a946a9d22838?placeholderIfAbsent=true&apiKey=70369efe05ba4d8ba60d2397425d36e6'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 126,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Image.network(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/3e351912f2af4fe8368ca888c8710860b25c70ddf8a3d16b8d4bc1e332e9fa99?placeholderIfAbsent=true&apiKey=70369efe05ba4d8ba60d2397425d36e6',
                          width: 100,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 28),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 21),
                          padding: const EdgeInsets.fromLTRB(26, 68, 26, 16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'ARM ROBOT',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'NO ID : 2500100409',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(height: 35),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(25, 0, 18, 0),
                                child: Text(
                                  'Payload: 20 kg.\nReach: 1.650 mm.\nRepeatability: ±0.04 mm.\nKecepatan Maksimum: 3 m/s.',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Container(
                                height: 36,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF34C759),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '100%',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Last View : 15-12-2024',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.robotoCondensed(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 31),
                              Row(
                                children: [
                                  Image.network(
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/6f8cbf07cba761f2517053c84131fdd85bfdcd28131456bf63d360cd4715be68?placeholderIfAbsent=true&apiKey=70369efe05ba4d8ba60d2397425d36e6',
                                    width: 34,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'BACK',
                                    style: GoogleFonts.robotoCondensed(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class WeldingRobotCard extends StatelessWidget {
  final String robotId;
  final String lastViewDate;
  final double progressValue;
  final VoidCallback onBackPressed;

  const WeldingRobotCard({
    Key? key,
    required this.robotId,
    required this.lastViewDate,
    required this.progressValue,
    required this.onBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      constraints: const BoxConstraints(maxWidth: 411),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(21, 125, 21, 41),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/background.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/robot_logo.png',
                      width: 121,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.fromLTRB(26, 68, 26, 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: const TextStyle(
                                fontFamily: 'Roboto Condensed',
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                              children: [
                                const TextSpan(
                                  text: 'WELDING ROBOT\n',
                                  style: TextStyle(fontSize: 36),
                                ),
                                TextSpan(
                                  text: 'NO ID : $robotId',
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 35),
                          const Text(
                            'Aplikasi: Arc Welding.\nPayload: 4 kg.\nReach: 1.500 mm.\nRepeatability: ±0.02 mm.',
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Stack(
                              children: [
                                FractionallySizedBox(
                                  widthFactor: progressValue / 100,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 70,
                                    ),
                                    color: const Color(0xFF34C759),
                                    child: Text(
                                      '${progressValue.toInt()}%',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Last View : $lastViewDate',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 31),
                          GestureDetector(
                            onTap: onBackPressed,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/back_icon.png',
                                  width: 34,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  'BACK',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'welding_robot_card.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WeldingRobotCard(
          robotId: '2500100904',
          lastViewDate: '15-12-2024',
          progressValue: 80,
          onBackPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}