import 'package:flutter/material.dart';
class Signinform extends StatefulWidget {
  const Signinform({super.key});

  @override
  State<Signinform> createState() => _SigninformState();
}

class _SigninformState extends State<Signinform> {
  GlobalKey<FormState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
        body:

        Center(
            child:
            Container(
                height: 1000,
                width: 400,
                child: Column(

                  children: [
                  Text("Welcome Back",style: TextStyle(fontSize: 30,color: Colors.blue,fontWeight: FontWeight.bold),),

                Text("Sign in to ShopCraft",
                  style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),

                Padding(padding: EdgeInsets.symmetric(vertical: 25)),

                Form(
key: key,
                    child:
                        Column(
                          children: [
                TextFormField(
                  decoration: InputDecoration(label:Text("Email"),hintText: "Enter your Email",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0),borderSide: BorderSide(color: Colors.black,width: 20) ) ),
                    validator:(val){
                      if(val== null || val.isEmpty){
                        return "you must give the email";
                      }else if( !val.contains("@")){

                        return "the email must include   @";

                      }
                      return null; }
                ),

                Padding(padding: EdgeInsets.symmetric(vertical: 25)),

                TextFormField(
                    obscureText: true,
                  decoration: InputDecoration(label:Text("Password"),hintText: "Enter your Password",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0) ) ),
                    validator:(val){
                      if(val== null || val.isEmpty){
                        return "you must give the password";
                      }else if( val.length < 6){

                        return "the password must At least 6 characters";

                      }
                      return null; }
                )
                ]),),
                    Padding(padding: EdgeInsets.symmetric(vertical: 25)),

                    MaterialButton(onPressed: () {
                      if(key.currentState!.validate()) {

                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Welcome!",
                                style: TextStyle(color: Colors.blue),),
                              content: Text("Account sign-in successfully",
                                style: TextStyle(color: Colors.blue),),

                              actions: [
                                TextButton(onPressed: () {

                                    Navigator.of(context).pushNamedAndRemoveUntil("home", ModalRoute.withName('welcome'),
                                    );



                                }, child: Card(
                                    color: Colors.white,
                                    child:
                                    SizedBox(
                                      width: 350,
                                      child: Center(
                                        child:
                                        Text("Close", style: TextStyle(
                                            color: Colors.blue, fontSize: 25,
                                            fontWeight: FontWeight.bold),),),
                                    )),)
                              ],


                            );
                          });}
                    },

                      child:
                      Card(
                          color: Colors.white,
                          child:
                          SizedBox(
                            width: 350,
                            child: Center(
                              child:
                              Text("Sign in",style: TextStyle(color: Colors.blue,fontSize: 25,
                                  fontWeight: FontWeight.bold),) ,),
                          )),


                    )


                ]),
            ))
    );

  }
}
