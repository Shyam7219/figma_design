import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.grey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 30),
            child: Column(
              children: [
                Text(
                  'Good Morning.......',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
                Text(
                  '          Pratham',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
              child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: ListView.builder(
                            padding:
                                EdgeInsets.only(top: 100, right: 15, left: 15),
                            itemCount: 13,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.all(10),
                                color: Colors.amber,
                                height: 70,
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin:
                                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Icon(
                                          Icons.home,
                                          size: 40,
                                        ))
                                  ],
                                ),
                              );
                            }),
                      ),
                      Container(
                          height: 90,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 186, 192, 203),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'To Do List',
                              style: TextStyle(fontSize: 30),
                            ),
                          ))
                    ],
                  )))
        ],
     ),
);
}
}