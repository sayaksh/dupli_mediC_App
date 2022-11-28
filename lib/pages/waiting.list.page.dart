import 'package:flutter/material.dart';
import 'package:health_card/widgets/patient_list.widgets.dart';

class PatientWaitingPage extends StatefulWidget {
  const PatientWaitingPage({super.key});

  @override
  State<PatientWaitingPage> createState() => _PatientWaitingPageState();
}

class _PatientWaitingPageState extends State<PatientWaitingPage> {
  List<Map<String, dynamic>> medi_list = [
    {
      "p_name": "Sweety Sinhania",
      "p_type": "Diabetes",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSg1Zf3kAoGO-nuXvuKB_PntnvwMU7lDRFrA&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
    {
      "p_name": "Jesica Alva",
      "p_type": "Blood Pressure",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZSdGD1DfXYN6Jm47GAA3w6ip2QgYb9wh8xQ&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
    {
      "p_name": "Jenifer Lawrence",
      "p_type": "Skin Allergy",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZKSz8NCMsP96ntchBw5lB9bv21m3zGAbrPA&usqp=CAU",
      "p_gender": "Female",
      "p_dob": ""
    },
    {
      "p_name": "Kalpana Chawla",
      "p_type": "Eye Problem",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReyiAMZZk9lMV1SpLj-vg8eTyT-596kBPaTg&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
    {
      "p_name": "Soma Laishram ",
      "p_type": "Dental Problem",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9KzqZs91IvJVP_jGgH_1EVnZPfWO0z_N_5w&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
    {
      "p_name": "Sweety Sinhania",
      "p_type": "Diabetes",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSg1Zf3kAoGO-nuXvuKB_PntnvwMU7lDRFrA&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
    {
      "p_name": "Jesica Alva",
      "p_type": "Blood Pressure",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZSdGD1DfXYN6Jm47GAA3w6ip2QgYb9wh8xQ&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
    {
      "p_name": "Jenifer Lawrence",
      "p_type": "Skin Allergy",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZKSz8NCMsP96ntchBw5lB9bv21m3zGAbrPA&usqp=CAU",
      "p_gender": "Female",
      "p_dob": ""
    },
    {
      "p_name": "Kalpana Chawla",
      "p_type": "Eye Problem",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReyiAMZZk9lMV1SpLj-vg8eTyT-596kBPaTg&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
    {
      "p_name": "Soma Laishram ",
      "p_type": "Dental Problem",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9KzqZs91IvJVP_jGgH_1EVnZPfWO0z_N_5w&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
    {
      "p_name": "Sweety Sinhania",
      "p_type": "Diabetes",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSg1Zf3kAoGO-nuXvuKB_PntnvwMU7lDRFrA&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
    {
      "p_name": "Jesica Alva",
      "p_type": "Blood Pressure",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZSdGD1DfXYN6Jm47GAA3w6ip2QgYb9wh8xQ&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
    {
      "p_name": "Jenifer Lawrence",
      "p_type": "Skin Allergy",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZKSz8NCMsP96ntchBw5lB9bv21m3zGAbrPA&usqp=CAU",
      "p_gender": "Female",
      "p_dob": ""
    },
    {
      "p_name": "Kalpana Chawla",
      "p_type": "Eye Problem",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReyiAMZZk9lMV1SpLj-vg8eTyT-596kBPaTg&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
    {
      "p_name": "Soma Laishram ",
      "p_type": "Dental Problem",
      "p_img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9KzqZs91IvJVP_jGgH_1EVnZPfWO0z_N_5w&usqp=CAU",
      "p_gender": "Female",
      "p_dob": "1990-09-15",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 208, 205),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 98, 161),
        title: const Text(
          "Patient Waiting List - Ready for test",
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 25,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: GridView.builder(
            shrinkWrap: true,
            //  padding: const EdgeInsets.symmetric(horizontal: 30),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                childAspectRatio: 16 / 4,
                mainAxisSpacing: 2),
            itemCount: medi_list.length,
            itemBuilder: (context, index) {
              return PatientList(
                  pName: medi_list[index]["p_name"],
                  pImg: medi_list[index]["p_img"],
                  pType: medi_list[index]["p_type"],
                  pDob: medi_list[index]["p_dob"],
                  pGenger: medi_list[index]["p_gender"]);
            },
          ),
        ),
      ),
    );
  }
}
