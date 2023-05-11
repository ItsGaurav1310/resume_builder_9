import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        title: Column(
          children: [
            Text("Resume Builder"),
            SizedBox(
              height: 50,
            ),
            Text("RESUMES"),
          ],
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('build_options');
        },
        child: Icon(
          CupertinoIcons.add,
          size: 40,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
                height: 60,
                width: 60,
                child: Image.asset("lib/utils/Assets/Icons/empty_box.png")),
          ),
          Text(
            "No Resumes + Create new resume",
            style: TextStyle(fontSize: 18, color: Colors.black54, height: 2),
          )
        ],
      ),
    );
  }
}
