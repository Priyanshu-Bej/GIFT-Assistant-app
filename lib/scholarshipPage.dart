import 'package:flutter/material.dart';

class ScholarshipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scholarships'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            buildScholarshipCard(
              title: 'Odisha State Scholarship for Engineering College',
              eligibility: [
                'Must be a resident of Podiha State',
                'Must be enrolled in an engineering college',
              ],
              benefits: [
                'Financial assistance for tuition fees',
                'Additional support for educational expenses',
              ],
              applyLink: 'https://scholarship.odisha.gov.in/website/home',
            ),
            SizedBox(height: 16),
            buildScholarshipCard(
              title: 'National Merit Scholarship',
              eligibility: [
                'Must have excellent academic performance',
                'Open to all nationalities',
              ],
              benefits: [
                'Full or partial tuition fee coverage',
                'Additional stipend for living expenses',
              ],
              applyLink: 'https://scholarship.nic.in/',
            ),
            SizedBox(height: 16),
            buildScholarshipCard(
              title: 'Women in STEM Scholarship',
              eligibility: [
                'Must be a female student',
                'Enrolled in a STEM-related field of study',
              ],
              benefits: [
                'Financial support for education and research',
                'Networking opportunities with industry professionals',
              ],
              applyLink: 'https://www.womeninstemscholarship.com/',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildScholarshipCard({
    required String title,
    required List<String> eligibility,
    required List<String> benefits,
    required String applyLink,
  }) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Eligibility Criteria:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: eligibility
                  .map((criteria) => Text(
                        '- $criteria',
                        style: TextStyle(fontSize: 14),
                      ))
                  .toList(),
            ),
            SizedBox(height: 8),
            Text(
              'Benefits:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: benefits
                  .map((benefit) => Text(
                        '- $benefit',
                        style: TextStyle(fontSize: 14),
                      ))
                  .toList(),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle button click
                // Redirect to the applyLink
                // You can use the URL launcher package to open the link
              },
              child: Text('Apply Now'),
            ),
          ],
        ),
      ),
    );
  }
}
