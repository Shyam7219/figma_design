import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                //color: Colors.amber,
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height* 0.27,
                decoration:  const BoxDecoration(
                  color: Color.fromARGB(255, 87, 5, 119),
                  borderRadius:  BorderRadius.only(
                    bottomLeft:Radius.circular(40),
                    bottomRight: Radius.circular(40))
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(top: 90,left: 20,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Sasha",style: TextStyle(fontSize: 20,color: Colors.white),),

                          SizedBox(height: 2,),

                          Text(
                            "Bengaluru - Karnataka 560036 - India",style: TextStyle(fontSize: 11,color: Colors.white)),
                        ],
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30), 
                          border: Border.all(
                            color: Color.fromARGB(255, 75, 88, 226),
                            width: 3, 
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.amber,
                          backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/01/66/39/54/240_F_166395402_UcbaS5Z5Tj1rEbMvzhHR1U7DpCgCWd3r.jpg'),
                          
                          ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 200,
                child: Container(
                        padding: EdgeInsets.only(left: 30),
                        width: 370,
                        height: 45,
                        
                        
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.blue,width: 3)
                            ),
                            labelText: 'search from here',
                            filled: true,
                            fillColor: Colors.white,
                            labelStyle: const TextStyle(color: Color.fromARGB(255, 173, 158, 158)),
                            prefixIcon: const Icon(Icons.search,color: Color.fromARGB(255, 115, 111, 111),),
                          ),
                        ),
                      ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}