import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignupPage(),
    );
  }
}
class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
          height: MediaQuery.of(context).size.height - 20,
          width: double.infinity,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children:[
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(
                      height: 5),
                  Text("Create an account, It's free",
                  style: TextStyle(fontSize: 15,color: Colors.grey.shade800)
                  ),
                ]
              ),
              Column(
                children:[
                  inputFile(label:"First Name",icon: Icons.person),
                  inputFile(label:"Last Name",icon: Icons.person),
                  inputFile(label:"E-mail",icon: Icons.email),
                  inputFile(
                      label:"Password",icon: Icons.lock,obscureText: true),
                  inputFile(label:"Confirm Password",icon: Icons.lock, obscureText: true),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3,left: 3),
                child: TextButton(
                  style: ButtonStyle(
                    padding:
                    MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(
                        horizontal: 60,
                        vertical: 15)),
                    backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.white),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                  onPressed: (){},
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Already have an account?"),
                  Text(" Login",
                  style: TextStyle(fontWeight:FontWeight.w700,fontSize:15),
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }

  inputFile({ label, icon, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black87
          ),
        ),
        SizedBox(
            height: 5),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.black,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        )
      ],
    );


  }
}
