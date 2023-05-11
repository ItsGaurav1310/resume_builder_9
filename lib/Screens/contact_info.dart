import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  int initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Column(
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
                        color: Colors.red,
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
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 18,
            child: IndexedStack(
              index: initialIndex,
              children: [
                Center(
                  child: Container(
                    color: Colors.teal,
                    height: 200,
                    width: 200,
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.purple,
                    height: 200,
                    width: 200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
