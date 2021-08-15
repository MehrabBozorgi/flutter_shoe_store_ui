import 'package:flutter/material.dart';
import 'package:flutter_shoes_ui/model/shoes_product.dart';
import 'package:flutter_shoes_ui/screen/detail_screen.dart';

class FirstScreen_Item extends StatelessWidget {
  const FirstScreen_Item({required this.shoes_product, required this.index});

  final List<ShoesProduct> shoes_product;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                shoesProduct: shoes_product[index],
              ),
            ),
          );
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: Image.asset(
                shoes_product[index].image,
                width: MediaQuery.of(context).size.width - 100,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    shoes_product[index].title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '\$' + shoes_product[index].price.round().toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
