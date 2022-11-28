import 'package:flutter/material.dart';

class PatientList extends StatelessWidget {
  const PatientList(
      {super.key,
      required this.pName,
      required this.pImg,
      required this.pType,
      required this.pDob,
      required this.pGenger});

  // ignore: prefer_typing_uninitialized_variables
  final pName;
  // ignore: prefer_typing_uninitialized_variables
  final pImg;
  // ignore: prefer_typing_uninitialized_variables
  final pType;
  // ignore: prefer_typing_uninitialized_variables
  final pDob;
  // ignore: prefer_typing_uninitialized_variables
  final pGenger;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      shadowColor: Colors.blueGrey,
      child: Container(
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(pImg),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  pName,
                  style: const TextStyle(
                    fontSize: 16,
                    // fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 28, 75, 99),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      pGenger,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 71, 102, 117),
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      pDob,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "view",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.amber,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
