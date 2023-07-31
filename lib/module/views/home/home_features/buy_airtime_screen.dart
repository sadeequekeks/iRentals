import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentals/index.dart';
import 'package:rentals/module/views/home/home_features/models/select_network_model.dart';
import 'package:sizer/sizer.dart';

class BuyAirtimeScreen extends StatefulWidget {
  const BuyAirtimeScreen({super.key});

  @override
  State<BuyAirtimeScreen> createState() => _BuyAirtimeScreenState();
}

class _BuyAirtimeScreenState extends State<BuyAirtimeScreen> {
  List<SelectNetworkModel> networkInfo = [
    SelectNetworkModel(
        image:
            'https://seekvectorlogo.com/wp-content/uploads/2022/03/mtn-group-management-services-pty-ltd-vector-logo-2022-small.png',
        name: 'MTN'),
    SelectNetworkModel(
        image:
            'https://seeklogo.com/images/A/airtel-logo-2F959F4207-seeklogo.com.png',
        name: 'Airtel'),
    SelectNetworkModel(
        image:
            'https://i0.wp.com/brandcrunch.com.ng/wp-content/uploads/2013/05/glo-logo.jpg?fit=426%2C426&ssl=1',
        name: 'Glo'),
    SelectNetworkModel(
        image:
            'https://cdn.punchng.com/wp-content/uploads/2017/07/19170207/9Mobile-Telecom-Logo.jpg',
        name: '9Mobile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'Buy Airtime',
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Network',
              style: GoogleFonts.merriweather(
                color: AppColors.rentalBlack,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              height: 15.h,
              child: ListView.separated(
                  itemCount: networkInfo.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 15.0,
                    );
                  },
                  itemBuilder: (context, index) {
                    return SelectNetworkCard(
                      name: networkInfo[index].name,
                      image: networkInfo[index].image,
                    );
                  }),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              'Amount',
              style: GoogleFonts.merriweather(
                color: AppColors.rentalBlack,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const InputTextField(
              hintText: '0.00',
              obsrcure: false,
              keyboardType: TextInputType.number,
              enabled: true,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              'Mobile Number',
              style: GoogleFonts.merriweather(
                color: AppColors.rentalBlack,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const InputTextField(
              hintText: '08080809800',
              obsrcure: false,
              keyboardType: TextInputType.number,
              enabled: true,
            ),
            const SizedBox(
              height: 35.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ArgonButton(
                  height: 50.0,
                  width: 60.w,
                  color: AppColors.primaryColor,
                  borderRadius: 15.0,
                  onTap: (startLoading, stopLoading, btnState) {
                    // si.routerService
                    //     .popReplaceRoute(context, const BottomNav());
                  },
                  child: Text(
                    "Proceed",
                    style: GoogleFonts.merriweather(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// https://seeklogo.com/images/A/airtel-logo-2F959F4207-seeklogo.com.png
class SelectNetworkCard extends StatelessWidget {
  const SelectNetworkCard({
    super.key,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 20.w,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(5.0),
            ),
            color: AppColors.secondaryWhite,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                image,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          name,
          style: GoogleFonts.merriweather(
            color: Colors.grey,
            fontSize: 12.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
