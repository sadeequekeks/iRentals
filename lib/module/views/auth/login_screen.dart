import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentals/index.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/Login.png',
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome !!',
                    style: GoogleFonts.merriweather(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              const InputTextField(
                hintText: 'Username / Email',
                obsrcure: false,
                keyboardType: TextInputType.emailAddress,
                enabled: true,
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const InputTextField(
                hintText: 'Password',
                obsrcure: true,
                keyboardType: TextInputType.visiblePassword,
                enabled: true,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.merriweather(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Text(
                'Or',
                style: GoogleFonts.merriweather(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              ArgonButton(
                height: 50.0,
                width: 40.w,
                color: AppColors.primaryColor,
                borderRadius: 15.0,
                onTap: (startLoading, stopLoading, btnState) {
                  si.routerService.popReplaceRoute(context, const BottomNav());
                },
                child: Text(
                  "Proceed",
                  style: GoogleFonts.merriweather(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.secondaryWhite,
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.secondaryWhite,
                    child: Icon(
                      FontAwesomeIcons.google,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: GoogleFonts.merriweather(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '   Register ',
                    style: GoogleFonts.merriweather(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
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
