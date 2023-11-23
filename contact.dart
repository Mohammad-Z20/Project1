import 'package:flutter/material.dart';
import 'shop.dart';
import 'menu.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ShowItems()),
                  );
                },
                child: Column(
                  children: [
                    const Icon(Icons.shopping_cart, size: 50,),
                    const SizedBox(height: 8.0),
                    const Text("Shop Now"),
                  ],
                ),
              ),
              const SizedBox(width: 60), // Add some space between the buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage(title: 'Zizo Tech')),
                  );
                },
                child: Column(
                  children: [
                    const Icon(Icons.home, size: 50),
                    const SizedBox(height: 8.0),
                    const Text("Home"),
                  ],
                ),
              ),
              const SizedBox(width: 60),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Contact()),
                  );
                },
                child: Column(
                  children: [
                    const Icon(Icons.contacts, size: 50,),
                    const SizedBox(height: 8.0),
                    const Text("Contact us"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 50),  // Add space between ElevatedButtons and Images
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              Image.asset(
                "images/ali.jpg",
                width: 150,
                height: 150,
              ),
              const SizedBox(width: 10),
              Image.asset(
                "images/zizo.jpg",
                width: 150,
                height: 150,
              ),
              SizedBox(width: 20),
            ],
          )
        ],
      ),
    );
  }
}
