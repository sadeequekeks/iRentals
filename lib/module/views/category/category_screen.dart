import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentals/index.dart';
import 'package:rentals/module/views/home/home_features/buy_airtime_screen.dart';
import 'package:rentals/module/views/home/home_features/buy_data_screen.dart';
import 'package:sizer/sizer.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: AppColors.primaryColor,
        title: const Text('Category'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: [
              Text(
                'Service',
                style: GoogleFonts.merriweather(
                  color: AppColors.rentalBlack,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryFeaturesCard(
                    icon: Icons.phone_outlined,
                    name: 'Airtime',
                    onTap: () {
                      si.routerService
                          .nextRoute(context, const BuyAirtimeScreen());
                    },
                  ),
                  CategoryFeaturesCard(
                    icon: Icons.wifi,
                    name: 'Data',
                    onTap: () {
                      si.routerService
                          .nextRoute(context, const BuyDataScreen());
                    },
                  ),
                  CategoryFeaturesCard(
                    icon: Icons.handyman_outlined,
                    name: 'Carpentry',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryFeaturesCard(
                    icon: Icons.local_laundry_service_outlined,
                    name: 'Laundry',
                    onTap: () {},
                  ),
                  CategoryFeaturesCard(
                    icon: Icons.electric_bolt_outlined,
                    name: 'Electric',
                    onTap: () {},
                  ),
                  CategoryFeaturesCard(
                    icon: Icons.plumbing_outlined,
                    name: 'Plumber',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryFeaturesCard(
                    icon: Icons.info_outline_rounded,
                    name: '',
                    onTap: () {},
                  ),
                  CategoryFeaturesCard(
                    icon: Icons.info_outline_rounded,
                    name: '',
                    onTap: () {},
                  ),
                  CategoryFeaturesCard(
                    icon: Icons.info_outline_rounded,
                    name: '',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 35.0,
              ),
              Text(
                'Rental Services',
                style: GoogleFonts.merriweather(
                  color: AppColors.rentalBlack,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryFeaturesCard(
                    icon: Icons.apartment_outlined,
                    name: 'Apartment',
                    onTap: () {},
                  ),
                  CategoryFeaturesCard(
                    icon: Icons.car_rental_outlined,
                    name: 'Vehicle',
                    onTap: () {},
                  ),
                  CategoryFeaturesCard(
                    icon: Icons.phone_android_outlined,
                    name: 'Music Instrumental',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryFeaturesCard(
                    icon: Icons.handyman_outlined,
                    name: 'Construction Materials',
                    onTap: () {},
                  ),
                  CategoryFeaturesCard(
                    icon: Icons.apartment_outlined,
                    name: 'Construction Machine',
                    onTap: () {},
                  ),
                  CategoryFeaturesCard(
                    icon: Icons.info_outline_rounded,
                    name: '',
                    onTap: () {},
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

class CategoryFeaturesCard extends StatelessWidget {
  const CategoryFeaturesCard({
    super.key,
    required this.icon,
    required this.name,
    required this.onTap,
  });

  final IconData icon;
  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 85.0,
        width: 24.w,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
          color: AppColors.secondaryWhite,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Color of shadow.
              spreadRadius: 1,
              blurRadius: 3, // Amount of blur.
              offset: const Offset(0, 1), // Position of shadow.
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 35.0,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              name,
              style: GoogleFonts.merriweather(
                color: AppColors.rentalBlack,
                fontSize: 8.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
