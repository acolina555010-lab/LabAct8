import 'package:flutter/material.dart';

class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({super.key});

  void showAccount(BuildContext context, String account) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Selected account: $account')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Social Media')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text(
            'Connect With Me',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text('Tap an account to display its username.'),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: const Icon(Icons.facebook, color: Colors.blue),
              title: const Text('Facebook'),
              subtitle: const Text('Arby Jhon E. Colina'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () =>
                  showAccount(context, 'Facebook: Arby Jhon E. Colina'),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.camera_alt, color: Colors.pink),
              title: const Text('Instagram'),
              subtitle: const Text('@Colina_instagram'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showAccount(context, 'Instagram: @Colina_instagram'),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.play_circle, color: Colors.red),
              title: const Text('YouTube'),
              subtitle: const Text('@ColinaYT'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showAccount(context, 'YouTube: @ColinaYT'),
            ),
          ),
        ],
      ),
    );
  }
}
