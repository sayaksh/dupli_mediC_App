import 'package:flutter/material.dart';
import 'package:health_card/pages/dashboard.page.dart';

class FirstMediPage extends StatefulWidget {
  const FirstMediPage({super.key});

  @override
  State<FirstMediPage> createState() => _FirstMediPageState();
}

class _FirstMediPageState extends State<FirstMediPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 221, 221),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 170,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC3kQ1xhobQDe96KmrRxLqS2mxKjoVrj-15Q&usqp=CAU",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "(This app is only for authorised staff)",
              style: TextStyle(
                  //fontStyle: FontStyle.italic,
                  color: Colors.blueGrey,
                  fontSize: 14),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 400,
              width: 400,
              child: Card(
                color: const Color.fromARGB(255, 248, 246, 246),
                shadowColor: Colors.black,
                elevation: 11,
                child: Container(
                  child: Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Enter your crudential",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.blueGrey),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.person,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                hintText: "  username",
                                labelStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide:
                                        const BorderSide(color: Colors.blue)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.blue)),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 1.0, horizontal: 1.0),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.lock,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                hintText: "  password",
                                labelStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide:
                                        const BorderSide(color: Colors.blue)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.blue)),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 1.0, horizontal: 1.0),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 30,
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DashboardPage()));
                                    //context.router.push(const DashboardRoute());
                                  },
                                  child: const Text("Login")),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text("reset")),
                              ],
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Login issue?",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text("Contact Support")),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Version 1.12.0",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black45
                                    // fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
