import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.Dart';

class LinkPage extends StatelessWidget {
  final String? url;

  LinkPage(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('QRL読み取り成功'),
          InkWell(
            child: Center(
              child : Text('$url')
            ),
            onTap: () => launch('$url')
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}