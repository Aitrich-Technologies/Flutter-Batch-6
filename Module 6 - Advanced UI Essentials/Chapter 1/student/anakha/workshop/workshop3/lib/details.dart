import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.report, color: Colors.red),
                Text(
                  "Report",
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ],
               ),
          )
        ],
      ),
      body: Column(
        children: [
          /// Top Black Image Area
          Container(
            height: 220,
            color: Colors.black,
          ),
           Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xFFD39A45),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Persian Cat",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Icon(Icons.favorite, color: Colors.red),
                      ],
                    ),
                    SizedBox(height: 6,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Loki",
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          "Kannur, kerala",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        InfoCard(title: "3 months", subtitle: "Age"),
                        InfoCard(title: "4.3 kg", subtitle: "Weight"),
                        InfoCard(title: "Male", subtitle: "Gender"),
                      ],
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      "Vaccinated on 10/08/2022",
                      style: TextStyle(color: Colors.black87),
                    ),
                    const SizedBox(height: 20),
                     Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEADADA),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                           const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Mai",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "Posted one day ago...",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                             ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),
                    const Text(
                      "Pet Story",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "This little sweetie is a 3 month old male cat. He has been at "
                      "the shelter since he was born, and we would really love to see "
                      "him get into a new home soon!",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                   ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const InfoCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 95,
      width: 95,
      decoration: BoxDecoration(
        color: const Color(0xFFEADADA),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}