import 'package:first_zuri_task/screens/github_webview_screen.dart';
import 'package:first_zuri_task/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('assets/me_pic.png'),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Name: Segun Michael',
            style: TextStyle(
                fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
                width: 200,
                text: "Open GitHub",
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GitWebViewScreen()
                    ),
                  );
                },
                icon: const Icon(Icons.login, color: Colors.white,)
            ),
          )
        ],
      ),
    );
  }
}
