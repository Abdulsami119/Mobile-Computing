import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Listing App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Product Listing'),
    );
  }
}

// This is the first screen. It shows the list of all products.
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          // Every ProductBox is wrapped in a GestureDetector so that
          // a tap on it can open the details screen of that product.
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    name: "iPhone",
                    description: "iPhone is the stylist phone ever",
                    price: 1000,
                    image: "iphone.png",
                  ),
                ),
              );
            },
            child: ProductBox(
              name: "iPhone",
              description: "iPhone is the stylist phone ever",
              price: 1000,
              image: "iphone.png",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    name: "Pixel",
                    description: "Pixel is the most featureful phone ever",
                    price: 800,
                    image: "pixel.png",
                  ),
                ),
              );
            },
            child: ProductBox(
              name: "Pixel",
              description: "Pixel is the most featureful phone ever",
              price: 800,
              image: "pixel.png",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    name: "Laptop",
                    description: "Laptop is most productive development tool",
                    price: 2000,
                    image: "laptop.png",
                  ),
                ),
              );
            },
            child: ProductBox(
              name: "Laptop",
              description: "Laptop is most productive development tool",
              price: 2000,
              image: "laptop.png",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    name: "Tablet",
                    description:
                        "Tablet is the most useful device ever for meeting",
                    price: 1500,
                    image: "tablet.png",
                  ),
                ),
              );
            },
            child: ProductBox(
              name: "Tablet",
              description: "Tablet is the most useful device ever for meeting",
              price: 1500,
              image: "tablet.png",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    name: "Pendrive",
                    description: "Pendrive is useful storage medium",
                    price: 100,
                    image: "pendrive.png",
                  ),
                ),
              );
            },
            child: ProductBox(
              name: "Pendrive",
              description: "Pendrive is useful storage medium",
              price: 100,
              image: "pendrive.png",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    name: "Floppy Drive",
                    description: "Floppy drive is useful rescue storage medium",
                    price: 20,
                    image: "floppy.png",
                  ),
                ),
              );
            },
            child: ProductBox(
              name: "Floppy Drive",
              description: "Floppy drive is useful rescue storage medium",
              price: 20,
              image: "floppy.png",
            ),
          ),
        ],
      ),
    );
  }
}

// This widget draws one row of the list: image on the left,
// name, description and price on the right.
class ProductBox extends StatelessWidget {
  ProductBox({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/appimages/" + image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// This is the second screen. It opens when a product is tapped
// and shows the full information of that product.
class ProductDetailPage extends StatelessWidget {
  ProductDetailPage({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Same image as the list, just shown bigger here.
              Image.asset("assets/appimages/" + image, width: 250, height: 250),
              SizedBox(height: 20),
              Text(
                this.name,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Price: " + this.price.toString(),
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              SizedBox(height: 10),
              Text(
                this.description,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              // Navigator.pop removes this screen and we land back on the list.
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to Product List"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
