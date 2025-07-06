import 'package:flutter/material.dart';
import 'package:jon_app_ui/util/job_card.dart';
import 'package:jon_app_ui/util/recent_job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    ['Uber', 'Ui Designer', 'lib/icons/uber.png', 45],
    ['Google', 'Product DEv', 'lib/icons/google.png', 80],
    ['Apple', 'Software Eng.', 'lib/icons/apple.png', 95],
  ];

  final List recentJobs = [
    ['Nike', 'Web Designer', 'lib/icons/nike.png', 20],
    ['Apple', 'Software Eng.', 'lib/icons/apple.png', 95],
    ['Google', 'Product Dev.', 'lib/icons/google.png', 44],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 75,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              padding: EdgeInsets.all(12),
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Image.asset('lib/icons/menu.png'),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a new path',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            child: Image.asset(
                              'lib/icons/search.png',
                              color: Colors.grey[600],
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search for a job',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    'lib/icons/settings.png',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'For You',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 160,
            child: ListView.builder(
              itemCount: jobsForYou.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: jobsForYou[index][0],
                  hourlyRate: jobsForYou[index][3],
                  jobTitle: jobsForYou[index][1],
                  logoImagePath: jobsForYou[index][2],
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'Recently Added',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (context, index) {
                  return RecentJobCard(
                    companyName: recentJobs[index][0],
                    hourlyRate: recentJobs[index][3],
                    jobTitle: recentJobs[index][1],
                    logoImagePath: recentJobs[index][2],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
