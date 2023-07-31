import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentals/index.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 30.h,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                ),
                child: Column(
                  children: [
                    Text(
                      'My Profile',
                      style: GoogleFonts.merriweather(
                        color: AppColors.rentalBlack,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          'https://www.dexerto.com/cdn-cgi/image/width=3840,quality=75,format=auto/https://editors.dexerto.com/wp-content/uploads/2023/04/20/one-piece-zoro-in-wano-arc.jpeg'),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Roronoa Zoro',
                      style: GoogleFonts.merriweather(
                        color: AppColors.rentalBlack,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'zoro@eastblue.com',
                      style: GoogleFonts.merriweather(
                        color: AppColors.rentalBlack,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 27.h,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                decoration: const BoxDecoration(
                  color: AppColors.secondaryWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  children: [
                    ProfileCard(
                      name: 'Start a Business',
                      icon: FontAwesomeIcons.dollarSign,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    ProfileCard(
                      icon: Icons.shopping_basket_outlined,
                      name: 'Bookings',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    ProfileCard(
                      icon: Icons.payment_outlined,
                      name: 'Payment & Wallet',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                'General',
                style: GoogleFonts.merriweather(
                  color: AppColors.rentalBlack,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                height: 27.h,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                decoration: const BoxDecoration(
                  color: AppColors.secondaryWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  children: [
                    ProfileCard(
                      icon: Icons.people_outline,
                      name: 'Invite a Friend',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    ProfileCard(
                      icon: Icons.thumb_up_alt_outlined,
                      name: 'Contact Us',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    ProfileCard(
                      icon: Icons.settings_outlined,
                      name: 'Settings',
                      onPressed: () {},
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

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.icon,
    required this.name,
    required this.onPressed,
  });
  final IconData icon;
  final String name;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: AppColors.primaryColor,
              size: 30.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              name,
              style: GoogleFonts.merriweather(fontSize: 16.0),
            ),
          ],
        ),
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.keyboard_arrow_right,
            color: AppColors.rentalBlack,
            size: 30,
          ),
        ),
      ],
    );
  }
}
