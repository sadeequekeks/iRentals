import 'package:flutter/material.dart';
import 'package:rentals/index.dart';
import 'package:rentals/module/views/trends/comment_screen.dart';
import 'package:sizer/sizer.dart';

class TrendScreen extends StatefulWidget {
  const TrendScreen({super.key});

  @override
  State<TrendScreen> createState() => _TrendScreenState();
}

class _TrendScreenState extends State<TrendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'Trends',
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20.0,
                    );
                  },
                  itemBuilder: (context, index) {
                    return const TrendCard();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class TrendCard extends StatelessWidget {
  const TrendCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey, // Color of the border.
          width: 1, // Width of the border.
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Image.network(
                  'https://x7d4c5z5.stackpathcdn.com/wp-content/uploads/tc/2021/02/Trends-tech-techcabal.jpg',
                  fit: BoxFit.cover,
                  width: 1000.0),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(
                              'https://www.dexerto.com/cdn-cgi/image/width=3840,quality=75,format=auto/https://editors.dexerto.com/wp-content/uploads/2023/04/20/one-piece-zoro-in-wano-arc.jpeg'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.thumb_up_outlined),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.comment_outlined),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet',
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextButton(
                  onPressed: () {
                    si.routerService.nextRoute(
                      context,
                      const CommentScreen(),
                    );
                  },
                  child: const Text(
                    'View all comments',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
