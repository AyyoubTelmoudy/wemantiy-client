
// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wemanity/colors/colors.dart';
import 'package:wemanity/screens/name.dart';
import 'package:wemanity/models/demand.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
    HomeScreen({Key? key, required this.demand}) : super(key: key);
  Demand demand;

  @override
  State<HomeScreen> createState() => _HomeScreenState(demand);
}

class _HomeScreenState extends State<HomeScreen> {
  Demand demand;
  _HomeScreenState(this.demand);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
                    SingleChildScrollView(
                      child: Column(children: [
                        const SizedBox(height: 10,),
                        Text( "Bienvenue !!",
                                   style:GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:const Color(0xFF11567E)),
                        ),
                        const SizedBox(height: 10,),
                          Container(
                             padding: const EdgeInsets.all(16.0), 
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),color: Colors.black12,
                              ),
                              child:   CircleAvatar(child: Image.asset("assets/images/img1.png"),),
                              )
                        ,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ 
                    
                          Container(
                             padding: const EdgeInsets.all(16.0), 
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),color: Colors.black12,
                              ),
                              child:   CircleAvatar(child: Image.asset("assets/images/img2.png"),),
                              ),
                    
                              const SizedBox(width: 20,),
                                                Text(
                          "Wemanity",
                                   style:GoogleFonts.roboto(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color:primary),
                        ),
                        const SizedBox(width: 20,),
                             Container(
                             padding: const EdgeInsets.all(16.0), 
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),color: Colors.black12,
                              ),
                              child:   CircleAvatar(child: Image.asset("assets/images/img3.png"),),
                              )
                        
                        ],)
                        ,
                          Container(
                             padding: const EdgeInsets.all(16.0), 
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),color: Colors.black12,
                              ),
                              child:   CircleAvatar(child: Image.asset("assets/images/img4.png"),),
                              ),
                        
                              FractionallySizedBox(
                                 widthFactor: 0.6,
                                 child: Image.asset("assets/logo/header.png", fit: BoxFit.fitWidth, height: MediaQuery.of(context).size.height * 0.3),
                                                ),
                        const Text("Merci de remplir ce formulaire !",style: TextStyle(fontSize: 20),)
                        ,
                        const SizedBox(height: 20,),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              return SizedBox(
                                width: constraints.maxWidth > 200 ? 200 : constraints.maxWidth,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: primary),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => NameScreen(demand: demand,)));
                                  },
                                  child: const Text(
                                    "Suivant",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              );
                            },
                          ),
                      ],
                      ),
                    ),
               ),
      );
  }
}
