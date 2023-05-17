import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  GlobalKey formkey = GlobalKey();
  String? name;
  String? email;
  String? number;
  String? adress1;
  String? adress2;
  String? adress3;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController Adress1Controller = TextEditingController();
  TextEditingController Adress2Controller = TextEditingController();
  TextEditingController Adress3Controller = TextEditingController();
  int initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 90,
        title: Text("Resume WorkSpace"),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(CupertinoIcons.back)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          initialIndex = 1;
                        });
                      },
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 17,
                              child: Container(
                                color: Colors.blue,
                                alignment: Alignment.center,
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: (initialIndex == 1)
                                    ? Colors.amber
                                    : Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          initialIndex = 0;
                        });
                      },
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 17,
                              child: Container(
                                color: Colors.blue,
                                alignment: Alignment.center,
                                child: Text(
                                  "Photo",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: (initialIndex == 0)
                                    ? Colors.amber
                                    : Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 18,
              child: IndexedStack(
                index: initialIndex,
                children: [
                  Center(
                    child: Container(
                      color: Colors.teal,
                      height: height * 0.6,
                      width: width,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(30),
                      color: Colors.white,
                      height: height * 0.55,
                      width: width,
                      child: Form(
                        key: formkey,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Icon(
                                    Icons.person,
                                    size: 40,
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Valid name";
                                      }
                                    },
                                    onChanged: (val) {
                                      name = val;
                                    },
                                    // controller: nameController,
                                    // obscureText: true,
                                    obscuringCharacter: "\$",
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      labelText: "Enter Your Name",
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(30),
                                      // ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Icon(
                                    Icons.mail,
                                    size: 40,
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Valid email";
                                      }
                                    },
                                    onChanged: (val) {
                                      email = val;
                                    },
                                    controller: emailController,
                                    // obscureText: true,
                                    // obscuringCharacter: "\$",
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      labelText: "Enter Your Email",
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(30),
                                      // ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Icon(
                                    Icons.phone_android,
                                    size: 40,
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Valid Number";
                                      }
                                    },
                                    onChanged: (val) {
                                      number = val;
                                    },
                                    maxLength: 10,
                                    controller: numberController,
                                    // obscureText: true,
                                    // obscuringCharacter: "\$",
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      labelText: "Enter Your Mobile Number",
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(30),
                                      // ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Icon(
                                    Icons.location_on,
                                    size: 40,
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Valid Adress";
                                      }
                                    },
                                    onChanged: (val) {
                                      adress1 = val;
                                    },
                                    controller: Adress1Controller,
                                    // obscureText: true,
                                    // obscuringCharacter: "\$",
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      labelText: "Adress",
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(30),
                                      // ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                // Expanded(
                                //   child: Icon(
                                //     Icons.person,
                                //     size: 40,
                                //   ),
                                // ),
                                Expanded(
                                  flex: 5,
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Valid Adress";
                                      }
                                    },
                                    onChanged: (val) {
                                      adress2 = val;
                                    },
                                    controller: Adress2Controller,
                                    // obscureText: true,
                                    // obscuringCharacter: "\$",
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      labelText: "Adress Line 2",
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(30),
                                      // ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                // Expanded(
                                //   child: Icon(
                                //     Icons.person,
                                //     size: 40,
                                //   ),
                                // ),
                                Expanded(
                                  flex: 5,
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Valid Adress";
                                      }
                                    },
                                    onChanged: (val) {
                                      adress3 = val;
                                    },
                                    controller: Adress3Controller,
                                    // obscureText: true,
                                    // obscuringCharacter: "\$",
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      labelText: "Adress Line 3",
                                      // border: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.circular(30),
                                      // ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
