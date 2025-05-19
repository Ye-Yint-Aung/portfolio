import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlService {
  Future<void> launchMyURL(String url) async {
    if (url.isEmpty) {
      throw 'Given URL is empty';
    }

    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class UrlTextButton extends StatelessWidget {
  const UrlTextButton({super.key, required this.onPressed,required this.title});
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(title));
  }
}
