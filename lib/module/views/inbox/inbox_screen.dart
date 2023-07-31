import 'package:flutter/material.dart';
import 'package:rentals/index.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: AppColors.primaryColor,
        title: const Text('Chat'),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(
                            'https://www.dexerto.com/cdn-cgi/image/width=3840,quality=75,format=auto/https://editors.dexerto.com/wp-content/uploads/2023/04/20/one-piece-zoro-in-wano-arc.jpeg'),
                      ),
                      title: Text('Roronoa Zoro'),
                      subtitle: Text('Last Text'),
                      trailing: Text('0:00'),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
