import 'package:flutter/material.dart';

class About_Us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'GIFT Profile',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                    'Gandhi Institute For Technology (GIFT) , Bhubaneswar established by the Balaram Panda Trust in the year 2007 is located at the outskirts of Bhubaneswar, and is well connected by Rail, Road and Air. The institute is an ISO 9001:2008 certified institution, a constituent college of revered Gandhi Group of Institutions, which pioneered quality technical education in East India. Programs like Diploma, B. Tech, MBA, MCA and M. Tech are offered at GIFT.The Institute is approved by AICTE, New Delhi by their letter no. 760-82/(NDEG)/ ET/ 2007/ 02 Dated: -06-07-2007 and is affiliated to BPUT, Rourkela and SCTE & VT.'),
                SizedBox(height: 10),
                Text(
                    'Gandhi Institute For Technology is accredited by NAAC with Grade ‘A++’ and departments like CSE, ECE, MECH & EEE are accredited by NBA. Ministry of Science & Technology Govt. of India recognized it as the Scientific and Industrial Research Organization (SIRO). GIFT is an authorized Remote Centre of IIT BOMBAY & IIT KHARAGPUR for conducting IST& AEC workshop. Ministry of MSME, Govt. of India has been pleased to announce this institute as a Host Institute/Business Incubator. The institution is also an authorized Preparation & Exam Centre of Business English Certification Examinations, conducted by Cambridge University, UK. GIFT has been striving relentlessly and successfully in its vision to grow into an Institution of Excellence.'),
                SizedBox(height: 10),
                Text(
                    'GIFT College aims to provide the highest-quality education to promising and enthusiastic young minds. With a team of dedicated faculty of scholars distinguished in their respective fields, GIFT seeks and adopts innovative methods to improve the quality of education and research on a consistent basis.'),
                SizedBox(height: 10),
                Text(
                    'GIFT provides conducive environment for learning with accessible teachers and engaged students who participate together in bringing out the best. At GIFT students take advantage of opportunities as new fields, and bring up new innovations. The teachers prepare the students to lead lives that are professionally satisfying and successful, personally fulfilling, and enriched by a love of learning.'),
              ],
            ),
          ),
          ExpansionTile(
              title: Text('Vision & Mission',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              childrenPadding: EdgeInsets.all(13),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('Our Vision',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Text(
                        '“To meet educational needs by expanding the potential to adapt, grow and lead a purposeful life by pursuing goals towards achieving excellence in professional education that will best serve the world.”'),
                    SizedBox(height: 10),
                    Text('Our Mission',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Text(
                        '1. To provide a continuous learning process and develop the abilities to envision, integrate, and execute science and engineering projects.'),
                    SizedBox(height: 10),
                    Text(
                        '2. To pursue a dynamic curriculum that fosters creativity and cognitive thinking.'),
                    SizedBox(height: 10),
                    Text(
                        '3. To encourage innovation, design, and entrepreneurship in students and faculty.'),
                    SizedBox(height: 10),
                    Text(
                        '4. To address societal problems through supervision and a transformative educational system.'),
                    SizedBox(height: 10),
                  ],
                ),
              ]),
          ExpansionTile(
            title: Text('Infrastructure',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            childrenPadding: EdgeInsets.all(13),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  SizedBox(height: 10),
                  Text(
                      'The infrastructure and facility available on campus are amongst the very best.'),
                  Text(
                      'The 8.1 acres beautiful campus has all sorts of facilities inside. The 5 storey mountainous GIFT building itself speaks volumes. Apart from this well-furnished Hostel and staff quarters facilitate students and staffs to be always together. The long play ground gives an opportunity to the physical development of giftians.Above all the beautiful lawns add beauty to the campus. It is a wholly self-contained campus comprising of everything that students on campus would ever require. One has to come down here and have a first-hand view of such a beautiful campus.'),
                  SizedBox(height: 10),
                  Text('Why am I unable to save or share an invoice?'),
                  Text(
                      "Standby power generators are provided in the campus to take care of the occasional power shut down due to maintenance."),
                  SizedBox(height: 10),
                  Text(
                      'A campus wide wireless computing network is in place that allows faculty, staff and students to log on to the Internet at any point of time. The Internet lab powered by dedicated leased lines (up-to 68 Mbps) is open for students even after college hours to help them spend extra time to make use of the abundant information available on the Internet.'),
                  Text(
                      'Yes, you can use the app offline to create and save invoices. However, you will need an active internet connection to share invoices via email or messaging apps.'),
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Awards and Achievements',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            childrenPadding: EdgeInsets.all(13),
            children: [
              Column(
                children: const [
                  SizedBox(height: 10),
                  Text(
                    '• GIFT was approved By BPUT as "Research Center" for BPUT Ph.D students Course Work and Evaluation.\n'
                    '• In the Latest CSR-GHRDC Engineering Colleges Survey-2019 published in July 2019 issue of \'Competition Success Review Magazine\', GIFT Engineering and Management College was ranked at 15th position among Top Engineering Colleges of Excellence in India and 3rd among top engineering colleges in Odisha among all govt and private colleges in the State.\n'
                    '• GIFT has signed MOU with Institution of Engineers (India) for collaborative academia and research.\n'
                    '• GIFT was awarded as "The Institute with Best Technology Utilization in Higher Education" in Educational Summit Eduquest-2018 organized by \'ETV Network\'.\n'
                    '• GIFT was awarded \'Life Time Institutional Membership\' of \'Association of Indian Management Schools (AIMS)\' vide Membership no. AIMS/LF/OD/EZ/2414.\n'
                    '• Ministry of Youth Affairs & Sports, Govt of India has permitted to open 4 No.s of NSS (National Service Scheme) Regional Centers in GIFT.\n'
                    '• Team \'Bit Coders\' of GIFT won 1st prize in Grand Finale of Smart India Hackathon – 2017.\n'
                    '• GIFT won 2nd and 3rd prizes in "National Robotics Championship by RoboFeast-2017, Cognizance IIT Roorkee" held at IIT Roorkee.\n'
                    '• GIFT won 2 prizes in garden competition and 4 prizes in flower competition held at Ekamra Kanan.\n'
                    '• Award of Best Engineering College of Odisha in the field of Academics, Curricualr and R&D by Parichaya Social welfare and development trust of India.\n'
                    '• GIFT is a collaborative R&D Project center of NALCO for Research Project on Nano Fluid.\n'
                    '• GIFT is certified training center of Govt. of Odisha for "PWD Assistant Executive Engineers".\n'
                    '• GIFT awarded in National Level Flower exhibition at NALCO.\n'
                    '• GIFT is accredited with \'A\' grade by NAAC (National Assessment and Accreditation Council).\n'
                    '• National Board of Accreditation (NBA) has Awarded Accreditation to GIFT.\n'
                    '• GIFT was awarded as "Best Higher Education Institution in Odisha" in Educational Summit Eduquest-2015.\n'
                    '• GIFT has signed MOU with RTTC, BSNL Bhubaneswar on 20-08-2015.\n'
                    '• GIFT is associated with VODAFONE for their CAMPUS CONNECT PROGRAM.\n'
                    '• GIFT is Recognized and accredited as a \'Scientific & Industrial Research Organization (SIRO)\' by Ministry of Science & Technology, Govt. of India.\n'
                    '• GIFT is in the listing of SAE-INDIA Collegiate clubs – Eastern section with highest number of student members.\n'
                    '• On 15th July, 2014 GIFT was conferred by \'Cambridge University\' with a citation for planned preparation of students for the BEC Prelim and Vantage Examinations 2014.\n'
                    '• GIFT has been ranked in 31st position as Top Emerging College of Excellence in India, CSR-GHRDC Survey-2014.\n'
                    '• Ranked 3rd position among Top 10 Engineering Colleges in the State, CSR-GHRDC Survey-2014.\n'
                    '• Ranked 84th position among Top Private Engineering Colleges in the Country, CSR-GHRDC Survey-2014.\n'
                    '• GIFT was awarded for the 2nd time as the \'Best Technical Institute in Odisha\' at the 8th \'Capital Education Fair-2013\'.\n'
                    '• GIFT has been ranked among the top 30 Engineering Colleges of India in the Most Prestigious Engineering Colleges Survey 2013 by GHRDC, New Delhi.\n'
                    '• In the 7th \'Capital education Fair-2012\', GIFT has been awarded as the \'Best Engineering College of Odisha\' for the year 2012.\n'
                    '• GIFT is a ISO 9001:2008 Certified Institution.\n'
                    '• GIFT is a member of United Nation\'s Academic Impact.\n'
                    '• GIFT is a Partner Institute of \'International Student Exchange Programme\'.\n'
                    '• GIFT is a Institutional Member of \'The Indian Society for Technical Education\'.\n'
                    '• GIFT has more than 70 publications in National and International Journals.\n'
                    '• GIFT College has donated 1 Lakh Rupees to Chief Minister\'s Relief Fund to help victims of Cyclone Phailin.\n'
                    '• In \'All India Theatre Olympiad-2013\' GIFT\'S SPARSH DRAMA GROUP has bagged Best Production Award, Best Regional Award, Best Direction Award (Subharanjan Kar) & Best Actress Award (Pallavi Priyambada Badajena) at Cuttack on 30-09-2013.\n'
                    '• GIFT bagged the \'EAST MEMORIAL CHAMPIONSHIP CRICKET TROPHY\'. The Trophy was awarded by honorable MP Dr. Prasanna Kumar Patasani and famous Indian woman Karate player Valena Valentina.\n'
                    '• Prof Dr. Abraham Vergis, Vice President (International Academic Partnership Programme) & Provost (Miami University, USA)has visited and invited GIFT to start Dual Degree Programme for Online Executive MBA.\n'
                    '• GIFT has Tie-up with TCS for conducting online test for various exams like Banking/Railway/LIC etc.\n'
                    '• Prof Darek Bradley, Director ASIA PACIFIC PROGRAMMES, invited GIFT as the first-ever Engineering College in Eastern India, to become a direct member of their International StudentExchange Programme.\n'
                    '• GIFT is a Institutional member of NPTEL for accessing online web and Video courses in Engineering.\n'
                    '• GIFT is a Partner of Infosys Campus Connect Programme and the programme is running full swing.\n'
                    '• GIFT is a Center For Development of Advanced Computing in Collaboration with C-DAC.\n'
                    '• GIFT is a Partner to Oracle for it\'s Workforce Development Programme.\n'
                    '• GIFT is a Remote Center to \'Cambridge University\' for it\'s Business English Certificate Exams.\n'
                    '• GIFT is a certified partner of ORACLE CORPORATION.\n'
                    '• GIFT has tie-up with W.E.P Ltd., Hyderabad for accessing learningware online study materials in Engineering.\n'
                    '• GIFT is a regular contributor to Wipro Mission 10x.\n'
                    '• GIFT is a Internship partner of Innovader Lab.\n'
                    '• GIFT is a SAP Training Center of Future Soft.\n'
                    '• GIFT is a member of Computer Society of India.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
