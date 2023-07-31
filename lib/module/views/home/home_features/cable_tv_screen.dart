import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentals/index.dart';
import 'package:rentals/module/views/home/home_features/models/select_network_model.dart';
import 'package:sizer/sizer.dart';

class CableTvScreen extends StatefulWidget {
  const CableTvScreen({super.key});

  @override
  State<CableTvScreen> createState() => _CableTvScreenState();
}

class _CableTvScreenState extends State<CableTvScreen> {
  List<SelectNetworkModel> networkInfo = [
    SelectNetworkModel(
        image: 'https://assets.sunnewsonline.com/2021/05/GOtv-1.jpg',
        name: 'GO TV'),
    SelectNetworkModel(
        image:
            'https://yt3.googleusercontent.com/rqTf-xl1EZwvrrx6z9k25eDd75-5_pg21l6ipzv38RD5xvRVirnjikpgP42bFSrc0iTGhk5UFuA=s900-c-k-c0x00ffffff-no-rj',
        name: 'Startimes'),
    SelectNetworkModel(
        image:
            'https://theeagleonline.com.ng/wp-content/uploads/2020/11/DSTV.jpg',
        name: 'DsTv'),
    SelectNetworkModel(
        image:
            'https://yt3.googleusercontent.com/rqTf-xl1EZwvrrx6z9k25eDd75-5_pg21l6ipzv38RD5xvRVirnjikpgP42bFSrc0iTGhk5UFuA=s900-c-k-c0x00ffffff-no-rj',
        name: 'Startimes'),
  ];
  String type = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'Cable TV',
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Operator',
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
                    return SelectCableSubsCard(
                      name: networkInfo[index].name,
                      image: networkInfo[index].image,
                    );
                  }),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              'Select Package',
              style: GoogleFonts.merriweather(
                color: AppColors.rentalBlack,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            DropdownField(
              hint: 'Choose Package',
              onChanged: (value) {
                setState(() {
                  type = value;
                });
              },
              item: si.utilityService.getDropdownItems(
                [
                  '1 Month N500',
                  '3 Month N200',
                  '2 Month N3500',
                  '1 Month N5000',
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              'Mobile Number',
              style: GoogleFonts.merriweather(
                color: AppColors.rentalBlack,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
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

class SelectCableSubsCard extends StatelessWidget {
  const SelectCableSubsCard({
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
