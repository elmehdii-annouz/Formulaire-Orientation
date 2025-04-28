import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imbt_project/Database_infos.dart';
import 'package:imbt_project/Infos.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IMBT',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final prenom = TextEditingController();
  final nom = TextEditingController();
  final ville= TextEditingController();
  final telephone = TextEditingController();
  final email = TextEditingController();
  final etablissemnt = TextEditingController();
  final formation = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    prenom.dispose();
    nom.dispose();
    ville.dispose();
    telephone.dispose();
    email.dispose();
    etablissemnt.dispose();
    formation.dispose();
  }
  void showToastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  void clearText() {
    prenom.clear();
    nom.clear();
    ville.clear();
    telephone.clear();
    email.clear();
    etablissemnt.clear();
    formation.clear();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          shrinkWrap: true,
          reverse: true,
          children: <Widget>[

            Container(

              height: 87,
              width: 90,
              decoration: BoxDecoration(

                image: DecorationImage(
                    image: AssetImage('images/main.png'),
                  
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)

                ),

              ),
            ),
Container(
  padding: EdgeInsets.all(10),
),
            Container(
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "",
                    labelText: 'Prénom',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    fillColor: Color(
                      0xfff3f3f4,
                    ),
                    filled: true,

                  ),
                 controller: prenom,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Champ Obligatoire!';
                    }
                    return null;
                  },
    ),
            ),
            Container(
              padding: EdgeInsets.all(6),
            ),
            Container(
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "",
                  labelText: "Nom",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  fillColor: Color(
                    0xfff3f3f4,
                  ),
                  filled: true,
                ),
                  controller: nom,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
            ),
            Container(
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "",
                  labelText: "Ville",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  fillColor: Color(
                    0xfff3f3f4,
                  ),
                  filled: true,
                ),
                controller: ville,
              ),

            ),
            Container(
              padding: EdgeInsets.all(5),
            ),
            Container(
              child: TextFormField(
                style: TextStyle(
                  fontSize: 19,
                ),
                textAlign: TextAlign.start,

                decoration: InputDecoration(
                    hintText: 'EX:06258897541',
                    labelText: "Téléphone",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),),
                  fillColor: Color(0xfff3f3f4,),
                  filled: true,
                ),
                controller: telephone,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
            ),
            Container(

                child: TextFormField(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'xyz@gmail.com',
                    labelText:"Email" ,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    fillColor: Color(
                      0xfff3f3f4,
                    ),
                    filled: true,
                  ),
                  controller: email,
                ),
            ),
            Container(
              padding: EdgeInsets.all(5),
            ),
            Container(

                child: TextFormField(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText:"Établissement Antérieur",
                    hintText: 'Établissement Antérieur',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    fillColor: Color(
                      0xfff3f3f4,
                    ),
                    filled: true,
                  ),
                  controller: etablissemnt,

                )),
            Container(
              padding: EdgeInsets.all(4),
            ),
            Container(
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Formation Souhaitée",
                  labelText: "Formation",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  fillColor: Color(
                    0xfff3f3f4,
                  ),
                  filled: true,
                ),
                controller: formation,
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                child: const Text(
                  'SAVE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed:() {
                  Databaseinfos.instance.createInfos(Infos(
                      prenom:prenom.text,
                      nom: nom.text,
                      ville: ville.text,
                      telephone: telephone.text,
                      email: email.text,
                      etablissement: etablissemnt.text,
                      formation: formation.text
                  ));
             showToastMessage("Vos Informations Sont Sauvgardés");
             clearText();

    },
                style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    primary: Colors.deepOrange,
                    padding: EdgeInsets.symmetric(
                        horizontal: 130, vertical: 20)),
              ),
            ),
          ].reversed.toList(),
        ),
      ),
    );
  }
}
