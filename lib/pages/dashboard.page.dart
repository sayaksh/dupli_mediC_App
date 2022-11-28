import 'package:flutter/material.dart';
import 'package:health_card/pages/waiting.list.page.dart';
import 'package:health_card/widgets/dashboard.widgets.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Map<String, dynamic>> dashboard_list = [
    {
      "service_type": "Patient Enrollment",
      "service_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKSqBZSsyZS2guz9wsTCoEcsDRKUNiFWyWjg&usqp=CAU"
    },
    {
      "service_type": "HealthCare Management",
      "service_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShdN4R6Zp7IvB3YRlRsIUCSDLB5_HZTi5Rgw&usqp=CAU"
    },
    {
      "service_type": "HubX",
      "service_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjgzSeMd5klRo9SppWsyeV60w1eO0h82otnw&usqp=CAU"
    },
    {
      "service_type": "Nursing",
      "service_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRjpoKjExhXOm2cWB2axLX17SyEGVp2qoW9w&usqp=CAU"
    },
    {
      "service_type": "Elderly Care",
      "service_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5psT69ZJqsbPFwnzUgNi7bDAr8SkKfsKRdg&usqp=CAU"
    },
    {
      "service_type": "Wellness Services",
      "service_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5-j2BoRkcMahb9_prhKUyl16FtFV2Xzmheg&usqp=CAU"
    },
    {
      "service_type": "Medical Services",
      "service_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlDm1rnHkl8X3kdOM1l-k6UrXYDHalQiPBfQ&usqp=CAU"
    },
    {
      "service_type": "Physiotherapy",
      "service_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3x67JsXZ2sKjslvQnitNizlIpF4ZBuCJpRg&usqp=CAU"
    },
    {
      "service_type": "Dental",
      "service_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBQnFGAHf0r3ViuQ1oJjHBL4mvLFZ5NzCEHg&usqp=CAU"
    },
    {
      "service_type": "Sync",
      "service_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRwgE02F1m4lC1t-oZfDburKlJ3NzPU0wOeS75f2dzqfGwNHllMoV5_KxnbW9yTwo_7Dc&usqp=CAU"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 230, 228),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              width: 170,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC3kQ1xhobQDe96KmrRxLqS2mxKjoVrj-15Q&usqp=CAU",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Text(
            "MedicApp",
            style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 8, 107, 156),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Welcome to MedicApp Dashboard",
            style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 18, 29, 36),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Changing the way you receive healthcare with medical excelence",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          Container(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PatientWaitingPage(),
                      ));
                },
                child: GridView.builder(
                  shrinkWrap: true,
                  //  padding: const EdgeInsets.symmetric(horizontal: 30),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 5 / 4,
                      mainAxisSpacing: 3),
                  itemCount: dashboard_list.length,
                  itemBuilder: (context, index) {
                    return DashboardWidgets(
                      s_img: dashboard_list[index]["service_img"],
                      s_type: dashboard_list[index]["service_type"],
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
