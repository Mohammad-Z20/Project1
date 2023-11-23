import 'package:flutter/material.dart';
import 'menu.dart';
import 'item.dart';
import 'payment.dart';
import 'contact.dart';

class ShowItems extends StatelessWidget {
  const ShowItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop Items'),
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
              const SizedBox(width: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HomePage(title: 'Zizo Tech'))
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
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity, // Make the SizedBox expand to full width
                      child: Card(
                        elevation: 5,
                        child: Column(
                          children: [
                            Image.asset(
                              items[index].image,
                              width: 150,
                              height: 150, // Adjust the height as needed
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    items[index].toString(),
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  const SizedBox(height: 8),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigate to the new page when an item is bought
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => PaymentPage(item: items[index]),
                                        ),
                                      );
                                    },
                                    child: const Text('Buy Now'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              },
              itemCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}
