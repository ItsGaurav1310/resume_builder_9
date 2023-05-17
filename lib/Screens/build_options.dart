import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/my_options.dart';

class Build_options extends StatefulWidget {
  const Build_options({Key? key}) : super(key: key);

  @override
  State<Build_options> createState() => _Build_optionsState();
}

class _Build_optionsState extends State<Build_options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        title: Column(
          children: [
            const Text("Resume Workspace"),
            const SizedBox(
              height: 50,
            ),
            const Text("Build Options"),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...Myoptions.map((e) => Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: 50,
                            child: Image.asset("${e['icon']}")),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          e["name"],
                          style: const TextStyle(fontSize: 20),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(e['route_name']);
                            },
                            icon: const Icon(CupertinoIcons.right_chevron))
                      ],
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                  ],
                )).toList()
          ],
        ),
      ),
    );
  }
}
