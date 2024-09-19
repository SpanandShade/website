import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

final String email = 'spanandshade@gmail.com';
final String phoneNumber = '+919488536969';

void _launchEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
    query: encodeQueryParameters({
      'subject': 'Hello',
      'body': 'I would like to get in touch.',
    }),
  );
  await launchUrl(emailLaunchUri);
}

void _launchPhone() async {
  final Uri phoneLaunchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(phoneLaunchUri);
}

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(16)),
          Column(
            children: [
              GestureDetector(
                onTap: _launchEmail,
                child: Text(
                  'Email us: $email',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: _launchPhone,
                child: Text(
                  'Call us: $phoneNumber',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
