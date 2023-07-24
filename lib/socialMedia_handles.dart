import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialMediaCard extends StatelessWidget {
  final String handle;
  final String logoAsset;
  final String url;

  const SocialMediaCard(
      {Key? key,
      required this.handle,
      required this.logoAsset,
      required this.url})
      : super(key: key);

  void _launchURL() async {
    if (await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication)) {
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL,
      child: Card(
        color: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                logoAsset,
                height: 40,
                width: 40,
              ),
              const SizedBox(height: 8),
              Text(
                handle,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialMediaButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, bottom: 8),
          child: Text(
            'Follow us on social media:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SocialMediaCard(
                handle: 'LinkedIn',
                logoAsset: 'assets/linkedin.png',
                url:
                    'https://www.linkedin.com/school/giftbbsr/?originalSubdomain=in',
              ),
              SocialMediaCard(
                handle: 'Instagram',
                logoAsset: 'assets/instagram.png',
                url: 'https://www.instagram.com/gift.autonomous.bhubaneswar/',
              ),
              SocialMediaCard(
                handle: 'Youtube',
                logoAsset: 'assets/youtube.png',
                url: 'https://www.youtube.com/@gandhiinstitutefortechnolo9195',
              ),
              SocialMediaCard(
                handle: 'Twitter',
                logoAsset: 'assets/twitter.png',
                url: 'https://twitter.com/GIFTBBSR',
              ),
              SocialMediaCard(
                handle: 'Facebook',
                logoAsset: 'assets/facebook.png',
                url: 'https://www.facebook.com/gift.edu.in/',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
