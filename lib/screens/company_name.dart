import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wemanity/colors/colors.dart';
import 'package:wemanity/models/demand.dart';
import 'package:wemanity/screens/email_phone_number.dart';
import 'package:wemanity/screens/formations.dart';


// ignore: must_be_immutable
class CompanyNamScreen extends StatefulWidget {
    CompanyNamScreen({Key? key, required this.demand}) : super(key: key);
  Demand demand;


  @override
  // ignore: no_logic_in_create_state
  State<CompanyNamScreen> createState() => _CompanyNamScreenState(demand);
}

class _CompanyNamScreenState extends State<CompanyNamScreen> {
    final _formKey= GlobalKey<FormState>();
  Demand demand;

  _CompanyNamScreenState(this.demand);
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
                                                initialValue: demand.companyName,
                                                decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'Entreprise',
                                                ),
                                                onChanged: (val) {
                                                  setState(() {
                                                    demand.companyName= val;
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
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => FormationsScreen(demand: demand,)));
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
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => EmailPhoneScreen(demand: demand,)));
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