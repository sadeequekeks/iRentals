import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentals/index.dart';
import 'package:rentals/module/views/home/home_features/buy_airtime_screen.dart';
import 'package:rentals/module/views/home/home_features/buy_data_screen.dart';
import 'package:rentals/module/views/home/home_features/cable_tv_screen.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: AppColors.primaryColor,
        title: RichText(
          text: const TextSpan(
            text: "iRE",
            style: TextStyle(
              color: AppColors.rentalBlack,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "N",
                style: TextStyle(
                  color: AppColors.secondaryWhite,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "TALS",
                style: TextStyle(
                  color: AppColors.rentalBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline,
              color: AppColors.rentalBlack,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bell,
              color: AppColors.rentalBlack,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                      ),
                      items: imageSliders,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_pin,
                    color: Colors.grey,
                  ),
                  Text(
                    'Location',
                    style: GoogleFonts.merriweather(
                      color: Colors.grey,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              const InputTextField(
                hintText: 'Search',
                obsrcure: false,
                keyboardType: TextInputType.text,
                enabled: true,
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                'What would you like book',
                style: GoogleFonts.merriweather(
                  color: AppColors.rentalBlack,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeFeaturesCard(
                    icon: Icons.phone_outlined,
                    name: 'Airtime',
                    onTap: () {
                      si.routerService
                          .nextRoute(context, const BuyAirtimeScreen());
                    },
                  ),
                  HomeFeaturesCard(
                    icon: Icons.wifi,
                    name: 'Data',
                    onTap: () {
                      si.routerService
                          .nextRoute(context, const BuyDataScreen());
                    },
                  ),
                  HomeFeaturesCard(
                    icon: Icons.tv_outlined,
                    name: 'Cable Subscription',
                    onTap: () {
                      si.routerService
                          .nextRoute(context, const CableTvScreen());
                    },
                  ),
                  HomeFeaturesCard(
                    icon: Icons.handyman_outlined,
                    name: 'Carpentry',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeFeaturesCard(
                    icon: Icons.local_laundry_service_outlined,
                    name: 'Laundry',
                    onTap: () {},
                  ),
                  HomeFeaturesCard(
                    icon: Icons.electric_bolt_outlined,
                    name: 'Electric',
                    onTap: () {},
                  ),
                  HomeFeaturesCard(
                    icon: Icons.plumbing_outlined,
                    name: 'Plumber',
                    onTap: () {},
                  ),
                  HomeFeaturesCard(
                    icon: Icons.more_vert_outlined,
                    name: 'More',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                'What would you like rent',
                style: GoogleFonts.merriweather(
                  color: AppColors.rentalBlack,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeFeaturesCard(
                    icon: Icons.house_outlined,
                    name: 'Buy House',
                    onTap: () {},
                  ),
                  HomeFeaturesCard(
                    icon: Icons.phone_android_outlined,
                    name: 'Buy Airtime',
                    onTap: () {},
                  ),
                  HomeFeaturesCard(
                    icon: Icons.plumbing_outlined,
                    name: 'Buy Airtime',
                    onTap: () {},
                  ),
                  HomeFeaturesCard(
                    icon: Icons.car_rental_outlined,
                    name: 'Buy Car',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Text(
                'Recent',
                style: GoogleFonts.merriweather(
                  color: AppColors.rentalBlack,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: 20.h,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(5.0),
                        width: 70.w,
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.network(
                                    'https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/advisor/wp-content/uploads/2022/10/condo-vs-apartment.jpeg.jpg',
                                    fit: BoxFit.cover,
                                    width: 1000.0),
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0),
                                    child: const Text(
                                      'Apartment 1',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeFeaturesCard extends StatelessWidget {
  const HomeFeaturesCard({
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
        height: 100.0,
        width: 20.w,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
          color: AppColors.secondaryWhite,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Color of shadow.
              spreadRadius: 2,
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
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              name,
              style: GoogleFonts.merriweather(
                color: AppColors.rentalBlack,
                fontSize: 11.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'https://www.mhwilliams.com/wp-content/uploads/2020/01/11.jpeg',
  'https://i0.wp.com/innovation-village.com/wp-content/uploads/2022/01/MoMo-Advance.png?fit=2397%2C1459&ssl=1',
  'https://s3b.cashify.in/gpro/uploads/2021/12/11143333/All-Airtel-Data-Recharge-Plans-List.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-d_GSRKTf5ahVLUWHPGzxoYr-U2FnBud6vrpZg0eTzktqt0zs4NttCC19oBsZAqkcJgs&usqp=CAU',
  'https://i0.wp.com/innovation-village.com/wp-content/uploads/2022/01/MoMo-Advance.png?fit=2397%2C1459&ssl=1',
  'https://s3b.cashify.in/gpro/uploads/2021/12/11143333/All-Airtel-Data-Recharge-Plans-List.jpg'
];

final List<Widget> imageSliders = imgList
    .map((item) => SizedBox(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    // Positioned(
                    //   bottom: 0.0,
                    //   left: 0.0,
                    //   right: 0.0,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       gradient: LinearGradient(
                    //         colors: [
                    //           Color.fromARGB(200, 0, 0, 0),
                    //           Color.fromARGB(0, 0, 0, 0)
                    //         ],
                    //         begin: Alignment.bottomCenter,
                    //         end: Alignment.topCenter,
                    //       ),
                    //     ),
                    //     padding: EdgeInsets.symmetric(
                    //         vertical: 10.0, horizontal: 20.0),
                    //     child: Text(
                    //       'No. ${imgList.indexOf(item)} image',
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 20.0,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                )),
          ),
        ))
    .toList();
