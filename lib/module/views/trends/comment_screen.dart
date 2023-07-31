import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentals/index.dart';
import 'package:sizer/sizer.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'Comments',
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
                    height: 10.0,
                  );
                },
                itemBuilder: (context, index) {
                  return const CommentCard();
                },
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Comment here....',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.send_outlined,
                    color: AppColors.primaryColor,
                  ),
                  onPressed: () {
                    // Perform your send action here
                    //print('Send button pressed with text: ${_controller.text}');
                    _controller.clear();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CommentCard extends StatelessWidget {
  const CommentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
          Row(
            children: [
              const CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage(
                    'https://www.dexerto.com/cdn-cgi/image/width=3840,quality=75,format=auto/https://editors.dexerto.com/wp-content/uploads/2023/04/20/one-piece-zoro-in-wano-arc.jpeg'),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                'Roronoa Zoro',
                style: GoogleFonts.merriweather(
                  fontSize: 17.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Text(
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet',
            style: TextStyle(
              fontSize: 13.0,
            ),
          ),
        ],
      ),
    );
  }
}
