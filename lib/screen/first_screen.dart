import 'package:flutter/material.dart';
import 'package:flutter_shoes_ui/model/shoes_product.dart';
import 'package:flutter_shoes_ui/widgets/FirstScreen_Item.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ShoesProduct> shoes_product = [
      ShoesProduct(
        id: 1,
        title: 'Nike shoes red',
        image: 'pic1.jpg',
        description:
            'Made from at least 40% recycled materials by weight, the Nike Air VaporMax 2021 FK is airy and easy to wear with superstretchy, recycled Flyknit fabric',
        price: 100,
      ),
      ShoesProduct(
        id: 2,
        title: 'shoes 2',
        image: 'pic2.jpg',
        description:
            'Made from at least 40% recycled materials by weight, the Nike Air VaporMax 2021 FK is airy and easy to wear with superstretchy, recycled Flyknit fabric',
        price: 150,
      ),
      ShoesProduct(
        id: 3,
        title: 'Nike shoes red 2',
        image: 'pic3.jpg',
        description:
            'Made from at least 40% recycled materials by weight, the Nike Air VaporMax 2021 FK is airy and easy to wear with superstretchy, recycled Flyknit fabric',
        price: 75,
      ),
      ShoesProduct(
        id: 4,
        title: 'Nike shoes green',
        image: 'pic4.jpg',
        description:
            'Made from at least 40% recycled materials by weight, the Nike Air VaporMax 2021 FK is airy and easy to wear with superstretchy, recycled Flyknit fabric',
        price: 245,
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                'logo.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.grey[300],
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.grey[300],
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Icon(
                              Icons.notifications_none_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 550,
                    child: Hero(
                      tag: 'pic',
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: shoes_product.length,
                        itemBuilder: (context, index) => FirstScreen_Item(
                          shoes_product: shoes_product,
                          index: index,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
