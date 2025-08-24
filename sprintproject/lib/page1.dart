// shop.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ShopApp extends StatefulWidget {
  const ShopApp({super.key});

  @override
  State<ShopApp> createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "ShopCraft",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ), actions: [ElevatedButton(onPressed: () {
        changelang();
      }, child: Icon(Icons.language))
      ],
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Your Premium Shopping Experience : ",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // صور
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("assets/s2.jpg",
                        fit: BoxFit.cover, width: 190, height: 250),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      "https://res.cloudinary.com/davj3krmb/image/upload/v1755613543/s2_nczuow.jpg",
                      fit: BoxFit.cover,
                      width: 190,
                      height: 250,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              const Text(
                "Welcome to ShopCraft!: ",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),


              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("page2");
                },
                child: Card(
                  color: Colors.white,
                  child: SizedBox(
                    width: 220,
                    child: Center(
                      child: Text(
                        "sign_up".tr(),
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),


              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("page3");
                },
                child: Card(
                  color: Colors.white,
                  child: SizedBox(
                    width: 220,
                    child: Center(
                      child: Text(
                        "sign_in".tr(),
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  changelang() {
    if (context.locale == Locale('en', 'US')) {
      context.setLocale(Locale('ar', 'EG'));
    }


    else {
      context.setLocale(Locale('en', 'US'));
    }
  }


}













     
