import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wemanity/colors/colors.dart';
import 'package:wemanity/screens/come_back.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wemanity/models/demand.dart';


// ignore: must_be_immutable
class FormationsScreen extends StatefulWidget {
  FormationsScreen({Key? key, required this.demand}) : super(key: key);
  Demand demand;

  @override
  // ignore: no_logic_in_create_state
  State<FormationsScreen> createState() => _FormationsScreenState(demand);
}

class _FormationsScreenState extends State<FormationsScreen> {
  Demand demand;
  bool formation_1 = false;
  bool formation_2 = false;
  bool formation_3 = false;
  bool formation_4 = false;
  bool formation_5 = false;

  _FormationsScreenState(this.demand);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black12,
                ),
                child: CircleAvatar(child: Image.asset("assets/images/img1.png")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black12,
                    ),
                    child: CircleAvatar(child: Image.asset("assets/images/img2.png")),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "Wemanity",
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: primary,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black12,
                    ),
                    child: CircleAvatar(child: Image.asset("assets/images/img3.png")),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black12,
                ),
                child: CircleAvatar(child: Image.asset("assets/images/img4.png")),
              ),
              const SizedBox(height: 20),
              LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox(
                    width: constraints.maxWidth > 300 ? 300 : constraints.maxWidth,
                    child: CheckboxListTile(
                      title: const Text('Formation 1'),
                      value: formation_1,
                      onChanged: (newValue) {
                        setState(() {
                          formation_1 = newValue!;
                        });
                        demand.formations=checkFormation(demand.formations,"Formation 1");
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      tileColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
                    child: CheckboxListTile(
                      title: const Text('Formation 2'),
                      value: formation_2,
                      onChanged: (newValue) {
                        setState(() {
                          formation_2 = newValue!;
                        });
                         demand.formations=checkFormation(demand.formations,"Formation 2");
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      tileColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
                    child: CheckboxListTile(
                      title: const Text('Formation 3'),
                      value: formation_3,
                      onChanged: (newValue) {
                        setState(() {
                          formation_3 = newValue!;
                        });
                         demand.formations=checkFormation(demand.formations,"Formation 3");
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      tileColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
                    child: CheckboxListTile(
                      title: const Text('Formation 4'),
                      value: formation_4,
                      onChanged: (newValue) {
                        setState(() {
                          formation_4 = newValue!;
                        });
                         demand.formations=checkFormation(demand.formations,"Formation 4");
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      tileColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
                    child: CheckboxListTile(
                      title: const Text('Formation 5'),
                      value: formation_5,
                      onChanged: (newValue) {
                        setState(() {
                          formation_5 = newValue!;
                        });
                         demand.formations=checkFormation(demand.formations,"Formation 5");
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      tileColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox(
                    width: constraints.maxWidth > 200 ? 200 : constraints.maxWidth,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: primary),
                      onPressed: () {
                            onSubmit(context,demand);
                      },
                      child: const Text(
                        "Envoyer",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
               const SizedBox(height: 10,),
              const SizedBox(height: 5),
              LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox(
                    width: constraints.maxWidth > 200 ? 200 : constraints.maxWidth,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: primary),
                      onPressed: () {

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
    );
  }
}


List<String> checkFormation(List<String> formations, String formation) 
{
    bool containsFormation = false;
    for (String str in formations) 
    {
        if (str==formation) {
            containsFormation = true;
            break;
        }
    }
    if(containsFormation) {
      formations.remove(formation);
    } else {
      formations.add(formation);
    }
    return formations;
}

void onSubmit(BuildContext context,Demand demand)
{
  try {     
      createDemandsCollection(demand);
      Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => const ComeBackScreen()),
  );
  } catch (e) {

  }
}

void createDemandsCollection(Demand demand) async {
  try {
    final CollectionReference demandsCollection =
        FirebaseFirestore.instance.collection('demands');
    final snapshot = await demandsCollection.get();
    if (snapshot.docs.isEmpty) {
      final documentReference = demandsCollection.doc();
      await documentReference.set(Map<String, dynamic>.from(demand.toJson()));
    } else {
      demandsCollection.add(Map<String, dynamic>.from(demand.toJson()));
    }
  } catch (e) {

  }
}

