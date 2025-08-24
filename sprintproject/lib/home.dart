import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<Map<String, String>> hotOffers = [
    {
      "image": "assets/s15.jpg",
      "desc": "50% off the latest phones"
    },
    {
      "image": "assets/s4.jpg",
      "desc": "Discounts on laptops up to 30%"
    },
    {
      "image": "assets/s5.jpg",
      "desc": "Summer offers starting from 199 pounds"
    },
    {
      "image": "assets/s7.jpg",
      "desc": "Discounts on laptops up to 30%"
    },
    {
      "image": "assets/s8.jpg",
      "desc": "Special discounts on watches and accessories"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "our_products".tr(),
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30),
        ),actions: [ElevatedButton(onPressed: (){
          changelang();}, child: Icon(Icons.language))],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                "Featured Products:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),

              // Featured Offers Slider
              SizedBox(
                height: 250,
                child: PageView(
                  children: [
                    Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/s3.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 250,
                        ),
                      ),
                      Positioned(
                          bottom: 12,
                          left: 20,
                          child: Text(
                            "Offers on the new iPhone series",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))
                    ]),
                    Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/s4.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 250,
                        ),
                      ),
                      Positioned(
                          bottom: 12,
                          left: 20,
                          child: Text(
                            "Offers on laptops",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ))
                    ]),
                    Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/s5.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 250,
                        ),
                      ),
                      Positioned(
                          bottom: 12,
                          left: 20,
                          child: Text(
                            "Offers up to 25%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))
                    ]),
                  ],
                ),
              ),

              SizedBox(height: 25),

              Center(
                child: Text(
                  "Shop Our Collection",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),

              SizedBox(height: 20),

              // Collection GridView
              SizedBox(
                height: 400,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    buildProductCard(
                        context, "assets/s7.jpg", "MacBook Pro 16", "399"),
                    buildProductCard(
                        context, "assets/s8.jpg", "Smart Watch", "199"),
                    buildProductCard(context, "assets/s12.jpg",
                        "Designer Backpacked", "299"),
                    buildProductCard(context, "assets/s13.png",
                        "Premium Keyboard", "99"),
                    buildProductCard(context, "assets/s11.jpg",
                        "Wireless Mouse", "2399"),
                    buildProductCard(
                        context, "assets/s14.jpg", "iPhone", "900"),
                  ],
                ),
              ),

              SizedBox(height: 25),

              // Hot Offers
              Text(
                "hot_offers".tr(),
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              SizedBox(height: 15),

              SizedBox(
                height: 400, // نخليها محددة عشان تبقى Scrollable
                child: ListView.builder(
                  itemCount: hotOffers.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            // صورة العرض
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                hotOffers[index]["image"]!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 12),
                            // الوصف
                            Expanded(
                              child: Text(
                                hotOffers[index]["desc"]!,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget مساعد لمنتجات الـ Grid
  Widget buildProductCard(
      BuildContext context, String image, String name, String price) {
    return Column(
      children: [
        SizedBox(
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              right: 10,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Item Added to cart"),
                          Text("$name has been added to your cart"),
                        ],
                      ),
                      duration: Duration(seconds: 2),
                    ));
                  },
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
        Text(
          name,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Icon(Icons.monetization_on_outlined,
                size: 30, color: Colors.black),
            Text(price, style: TextStyle(color: Colors.black)),
          ],
        )
      ],
    );
  }

  changelang() {
    if (context.locale == Locale('en', 'US')){
context.setLocale(Locale('ar', 'EG'));}
else {context.setLocale( Locale('en', 'US'));
      
    }


  }







}