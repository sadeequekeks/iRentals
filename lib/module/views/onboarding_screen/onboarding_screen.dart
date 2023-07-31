import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rentals/index.dart';
import 'package:rentals/module/views/auth/login_screen.dart';
import 'package:sizer/sizer.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Get Started',
      finishButtonStyle: const FinishButtonStyle(
        backgroundColor: AppColors.primaryColor,
      ),
      onFinish: () {
        si.routerService.popReplaceRoute(
          context,
          const LoginScreen(),
        );
      },
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: const Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () async {
        si.routerService.popReplaceRoute(
          context,
          const LoginScreen(),
        );
      },
      controllerColor: AppColors.primaryColor,
      totalPage: 4,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        SizedBox(
          height: 40.h,
          child: SvgPicture.asset(
            'assets/work.svg',
            width: 50.h,
          ),
        ),
        SizedBox(
          height: 40.h,
          child: SvgPicture.asset(
            'assets/rent.svg',
            width: 50.h,
          ),
        ),
        SizedBox(
          height: 40.h,
          child: SvgPicture.asset(
            'assets/earn.svg',
            width: 50.h,
          ),
        ),
        SizedBox(
          height: 40.h,
          child: SvgPicture.asset(
            'assets/discount.svg',
            width: 50.h,
          ),
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50.h,
              ),
              const Text(
                'Functional Services',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Get accessible to professional ondemand services providers',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50.h,
              ),
              const Text(
                'Rent',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Get verified and affordable rental properties at your finger tips.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50.h,
              ),
              const Text(
                'Earn',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Earn money while you list your services and rental properties.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50.h,
              ),
              const Text(
                'Discount',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Enjoy discount while patronizing our services.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:rentals/index.dart';
// import 'package:rentals/module/views/auth/login_screen.dart';

// class OnBoardingPage extends StatefulWidget {
//   const OnBoardingPage({Key? key}) : super(key: key);

//   @override
//   OnBoardingPageState createState() => OnBoardingPageState();
// }

// class OnBoardingPageState extends State<OnBoardingPage> {
//   final introKey = GlobalKey<IntroductionScreenState>();

//   void _onIntroEnd(context) {
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(builder: (_) => const LoginScreen()),
//     );
//   }

//   Widget _buildImage(String assetName, [double width = 350]) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: SvgPicture.asset('assets/$assetName', width: width),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     const bodyStyle = TextStyle(fontSize: 19.0);

//     const pageDecoration = PageDecoration(
//       titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
//       bodyTextStyle: bodyStyle,
//       bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//       pageColor: Colors.white,
//       imagePadding: EdgeInsets.zero,
//     );

//     return Center(
//       child: IntroductionScreen(
//         key: introKey,
//         globalBackgroundColor: Colors.white,
//         // allowImplicitScrolling: true,
//         // autoScrollDuration: 3000,
//         // infiniteAutoScroll: true,
//         globalHeader: Align(
//           alignment: Alignment.topRight,
//           child: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 16, right: 16),
//               child: RichText(
//                 text: const TextSpan(
//                   text: "iRE",
//                   style: TextStyle(
//                     color: AppColors.rentalBlack,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                   children: <TextSpan>[
//                     TextSpan(
//                       text: "N",
//                       style: TextStyle(
//                         color: AppColors.secondaryWhite,
//                         fontWeight: FontWeight.w600,
//                         fontSize: 20,
//                       ),
//                     ),
//                     TextSpan(
//                       text: "TALS",
//                       style: TextStyle(
//                         color: AppColors.rentalBlack,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),

//         pages: [
//           PageViewModel(
//             title: "Functional Services",
//             body: "Get accessible to professional ondemand services providers",
//             image: _buildImage('work.svg'),
//             decoration: pageDecoration,
//           ),
//           PageViewModel(
//             title: "Earn",
//             body:
//                 "Earn money while you list your services and rental properties.",
//             image: _buildImage('earn.svg'),
//             decoration: pageDecoration,
//           ),
//           PageViewModel(
//             title: "Rent",
//             body:
//                 "Get verified and affordable rental properties at your finger tips.",
//             image: _buildImage('rent.svg'),
//             decoration: pageDecoration,
//           ),
//           PageViewModel(
//             title: "Discount on iRENTALS",
//             body: "Enjoy discount while patronizing our services.",
//             image: _buildImage('discount.svg'),
//           ),
//         ],
//         onDone: () => _onIntroEnd(context),
//         onSkip: () => _onIntroEnd(context), // You can override onSkip callback
//         showSkipButton: true,
//         skipOrBackFlex: 0,
//         nextFlex: 0,
//         showBackButton: false,
//         //rtl: true, // Display as right-to-left
//         back: const Icon(Icons.arrow_back),
//         skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
//         next: const Icon(Icons.arrow_forward),
//         done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
//         curve: Curves.fastLinearToSlowEaseIn,
//         controlsMargin: const EdgeInsets.all(16),
//         controlsPadding: kIsWeb
//             ? const EdgeInsets.all(12.0)
//             : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
//         dotsDecorator: const DotsDecorator(
//           size: Size(10.0, 10.0),
//           color: Color(0xFFBDBDBD),
//           activeSize: Size(22.0, 10.0),
//           activeShape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(25.0)),
//           ),
//         ),
//       ),
//     );
//   }
// }