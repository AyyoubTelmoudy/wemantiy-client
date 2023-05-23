import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wemanity/colors/colors.dart';
import 'package:wemanity/models/demand.dart';
import 'package:wemanity/screens/home.dart';
class ComeBackScreen extends StatefulWidget {
  const ComeBackScreen({super.key});

  @override
  State<ComeBackScreen> createState() => _ComeBackScreenState();
}

class _ComeBackScreenState extends State<ComeBackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
                    SingleChildScrollView(
                      child: Column(children: [
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
                        const Text("Merci pour votre participation !",style: TextStyle(fontSize: 20),)
                        ,
                        const SizedBox(height: 20,),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              return SizedBox(
                                width: constraints.maxWidth > 200 ? 200 : constraints.maxWidth,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: primary),
                                  onPressed: () {
                                     Demand demand=Demand(firstName: "", lastName: "", email: "", phone: "",companyName: "", formations: []);
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(demand: demand,)));
                                  },
                                  child: const Text(
                                    "Recommencer",
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