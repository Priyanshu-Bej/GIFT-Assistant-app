import 'package:flutter/material.dart';

class infocards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 16), // Left padding

          // Card 1
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              width: 280,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/card_logo1.png', // Path to your logo image
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Pioneer in Education',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'GIFT was established in the year 2007 by Balaram Panda Trust, and has been a pioneer in technical and management education in the state.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Learn More',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 10),

          // Card 2
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              width: 280,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/card_logo2.png',
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Experienced Pedagogy',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Our faculties are the best in the state and are experienced. They inspire and motivate our students to achieve their full potential and contribute to their overall development.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Learn More',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 10),

          // Card 3
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              width: 280,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/card_logo3.png',
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Visiting Faculty',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'We believe in learning from the experts and hence regularly invite eminent professors from various institutes of excellence such as IIT, NISER, OUAT, NITR, XIMB, etc.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Learn More',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 10),

          // Card 4
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              width: 280,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/card_logo4.png',
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Recognised by Certifying Bodies',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'GIFT is the only college in the state to have been awarded A++ by NAAC, and all our courses are NBA accredited. That is a certificate for the effort we put into pursuing excellence.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      // Handle Learn More button tap
                    },
                    child: const Text(
                      'Learn More',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
