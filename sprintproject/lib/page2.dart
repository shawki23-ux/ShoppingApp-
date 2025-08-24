import 'package:flutter/material.dart';

class Signupform extends StatefulWidget {
  const Signupform({super.key});

  @override
  State<Signupform> createState() => _SignupformState();
}

GlobalKey<FormState> keyword = GlobalKey();
TextEditingController passwordcontroller = TextEditingController();
TextEditingController confirmpasswordcontroller = TextEditingController();
class _SignupformState extends State<Signupform> {
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
        Text("Create Account",style: TextStyle(fontSize: 30,color: Colors.blue,fontWeight: FontWeight.bold),),
          
          Text("Join ShopCraft today",
            style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),

          Padding(padding: EdgeInsets.symmetric(vertical: 25)),

          Form(
key: keyword,
              child:
                  Column(
                    children: [

          TextFormField(

            decoration: InputDecoration(label:Text("Full Name"),hintText: "Enter your Name",
              border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black,width: 20) ) ),
            validator:(val){
              if(val== null || val.isEmpty){
                return "you must give the username";
              }else if( val[0]!= val[0].toUpperCase() ){

                return "the first  character must be capital";

              }
              return null;



            },

          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 25)),

          TextFormField(
            decoration: InputDecoration(label:Text("Email"),hintText: "Enter your Email",
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0) ) ),
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
            decoration: InputDecoration(label:Text("Password"),hintText: "Enter your Password",
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0) ) ),
controller: passwordcontroller,
              obscureText: true,
              validator:(val){
                if(val== null || val.isEmpty){
                  return "you must give the password";
                }else if( val.length < 6){

                  return "the password must At least 6 characters";

                }
                return null; }
                ),




          Padding(padding: EdgeInsets.symmetric(vertical: 25)),

          TextFormField(
            decoration: InputDecoration(label:Text("Confirm Password"),hintText: "Confirm your Password",
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0) ) ),

            controller: confirmpasswordcontroller,
              obscureText: true,
              validator:(val){
                if(val== null || val.isEmpty){
                return "you must give the password";
                }else if( val != passwordcontroller.text){

                return "Must match password";

                }
                return null; }

          )
         ] ),

),


          Padding(padding: EdgeInsets.symmetric(vertical: 25)),

          MaterialButton(onPressed: (){

            if (keyword.currentState!.validate()) {

            showDialog(
                context: context,
                builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Success!",
                        style: TextStyle(color: Colors.blue),),
                      content: Text("Account created successfully",
                        style: TextStyle(color: Colors.blue),),

                      actions: [
                        TextButton(onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil("home", ModalRoute.withName('welcome'));
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
                    Text("Create Account",style: TextStyle(color: Colors.blue,fontSize: 25,
                        fontWeight: FontWeight.bold),) ,),
                )),


          )
        ],

      ),
      ))
    );











  }
}
