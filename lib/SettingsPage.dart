import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isTermsExpanded = false;
  bool isPrivacyExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Privacy'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: const Text(
                'Terms and Conditions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                setState(() {
                  isTermsExpanded = !isTermsExpanded;
                });
              },
              trailing: Icon(isTermsExpanded
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down),
            ),
            if (isTermsExpanded)
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to the Gandhi Institute for Technology college app! These terms and conditions govern your use of our mobile application. By accessing or using the app, you agree to be bound by these terms and conditions.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Content',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'The app provides information about the Gandhi Institute for Technology college, its programs, services, and events. The content is for general informational purposes only and may be subject to change without notice.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'User Responsibilities',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'You agree to use the app in a responsible and lawful manner. You will not engage in any activity that could harm the app, its users, or the college. You are responsible for maintaining the confidentiality of your account information and agree not to share it with others.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Intellectual Property',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'The app and its content are protected by intellectual property rights owned by the Gandhi Institute for Technology college. You may not reproduce, modify, distribute, or display any part of the app without prior written consent.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Privacy',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'We collect and process personal information in accordance with our privacy policy. By using the app, you consent to the collection, use, and disclosure of your personal information as described in the privacy policy.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Third-Party Links',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'The app may contain links to third-party websites or services. We are not responsible for the content or privacy practices of these external sites. Use them at your own risk.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Disclaimer of Warranty',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'The app is provided on an "as is" and "as available" basis without any warranties, express or implied. We do not guarantee the accuracy, completeness, or reliability of the app\'s content.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Limitation of Liability',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'We shall not be liable for any direct, indirect, incidental, consequential, or punitive damages arising from your use of the app or any errors or omissions in its content.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Modifications',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'We reserve the right to modify or terminate the app or these terms and conditions at any time without notice. Your continued use of the app after any modifications constitutes acceptance of the updated terms.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Governing Law',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'These terms and conditions shall be governed by and construed in accordance with the laws of your jurisdiction.',
                    ),
                  ],
                ),
              ),
            const Divider(),
            ListTile(
              title: const Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                setState(() {
                  isPrivacyExpanded = !isPrivacyExpanded;
                });
              },
              trailing: Icon(isPrivacyExpanded
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down),
            ),
            if (isPrivacyExpanded)
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'At the Gandhi Institute for Technology college, we are committed to protecting your privacy. This privacy policy explains how we collect, use, and protect your personal information when you use our mobile application.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Information We Collect',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'We may collect personal information such as your name, contact details, and demographic information when you use the app. We may also collect non-personal information such as device information and usage data.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Use of Information',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'We use your personal information to provide and improve our services, communicate with you, and personalize your experience. We may also use your information for research and analytical purposes.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Data Sharing',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'We may share your personal information with trusted third-party service providers who assist us in operating the app and delivering our services. We do not sell, rent, or disclose your personal information to third parties for marketing purposes.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Data Security',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'We implement reasonable security measures to protect your personal information from unauthorized access, disclosure, or alteration. However, please note that no method of transmission over the internet or electronic storage is completely secure.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Data Retention',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'We retain your personal information for as long as necessary to fulfill the purposes outlined in this privacy policy, unless a longer retention period is required or permitted by law.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Your Choices',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'You have the right to access, correct, or delete your personal information. You may also choose to opt out of certain communications or data processing activities. Please contact us using the provided contact information to exercise your rights.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Children\'s Privacy',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'The app is not intended for use by children under the age of 13. We do not knowingly collect personal information from children without parental consent.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Changes to the Privacy Policy',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'We may update our privacy policy from time to time. We will notify you of any material changes by posting the updated policy in the app or through other communication channels.',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Contact Us',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'If you have any questions, concerns, or requests regarding our privacy practices, please contact us using the provided contact information.',
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
