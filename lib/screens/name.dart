import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wemanity/colors/colors.dart';
import 'package:wemanity/models/demand.dart';
import 'package:wemanity/screens/email_phone_number.dart';
import 'package:wemanity/screens/home.dart';

// ignore: must_be_immutable
class NameScreen extends StatefulWidget {
  NameScreen({Key? key, required this.demand}) : super(key: key);
  Demand demand;

  @override
  // ignore: no_logic_in_create_state
  State<NameScreen> createState() =>  _NameScreenState(demand);
}

class _NameScreenState extends State<NameScreen> {
  final _formKey= GlobalKey<FormState>();
  Demand demand;
  _NameScreenState(this.demand);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
                    Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Column(children: [
                          const SizedBox(height: 20,),
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
                          
                            const SizedBox(height: 20,),
                                                        LayoutBuilder(
                              builder: (context, constraints) {
                                return SizedBox(
                                  width: constraints.maxWidth > 300 ? 300 : constraints.maxWidth,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                border: Border.all(color: Colors.white),
                                                borderRadius: BorderRadius.circular(12)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: TextFormField(
                                                initialValue: demand.lastName,
                                                decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'Prénom',
                                                ),
                                                onChanged: (val) {
                                                  setState(() {
                                                    demand.lastName = val;
                                                  });
                                                },
                                                validator: (val) {
                                                  return val!.isEmpty
                                                      ? 'Ce champ est obligatoire'
                                                      : null;
                                                },
                                              ),
                                            ),
                                          ),    
                                );
                              },
                            ),
                            const SizedBox(height: 10,),
                                                        LayoutBuilder(
                              builder: (context, constraints) {
                                return SizedBox(
                                  width: constraints.maxWidth > 300 ? 300 : constraints.maxWidth,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                border: Border.all(color: Colors.white),
                                                borderRadius: BorderRadius.circular(12)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: TextFormField(
                                                initialValue: demand.firstName,
                                                decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'Nom',
                                                ),
                                                onChanged: (val) {
                                                  setState(() {
                                                    demand.firstName = val;
                                                  });
                                                },
                                                validator: (val) {
                                                  return val!.isEmpty
                                                      ? 'Ce champ est obligatoire'
                                                      : null;
                                                },
                                              ),
                                            ),
                                          ),    
                                );
                              },
                            ),
                            const SizedBox(height: 20,),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                return SizedBox(
                                  width: constraints.maxWidth > 200 ? 200 : constraints.maxWidth,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(primary: primary),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) 
                                          {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => EmailPhoneScreen(demand: demand,)));
                                        }
                                    },
                                    child: const Text(
                                      "Suivant",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
                              },
                            ),
                      
                            const SizedBox(height: 5,),
                      
                            LayoutBuilder(
                              builder: (context, constraints) {
                                return SizedBox(
                                  width: constraints.maxWidth > 200 ? 200 : constraints.maxWidth,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(primary: primary),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(demand: demand,)));
                                    },
                                    child: const Text(
                                      "Précédent",
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
               ),
      );
  }
}