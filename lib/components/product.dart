import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manjara/pages/product_details.dart';
class Product extends StatefulWidget {
  const Product({Key key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      'name': "Basmati Rice",
      'picture': "images/products/white-regular-choice-na-basmati-rice-pouch-india-gate-original-imag56ne3sya9ea4 - Yash Bhople.jpeg",
      'old_price': 83,
      'price': 64,
    },
    {
      'name': " Soyabean Oil",
      'picture': "images/products/refined-pouch-soyabean-oil-fortune-original-imag4gb3gy7ykafy - Yash Bhople.jpeg",
      'old_price': 180,
      'price': 170,
    },
    {
      'name': "BANSHI  WHEAT",
      'picture': "images/products/banshi-premium-wheat-500x500 - Yash Bhople.jpg",
      'old_price': 60,
      'price': 55,
    },
    {
      'name': "Fortune  Besan",
      'picture': "images/products/516orkbeQPL - Yash Bhople.jpg",
      'old_price': 120,
      'price': 100,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (context) =>new ProductDetails(
                product_detail_name: prod_name,
                product_detail_old_price: prod_old_price,
                product_detail_new_price: prod_price,
                product_detail_picture: prod_picture,
              ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text("\u{20B9}$prod_price",),
                    subtitle: Text("\u{20B9}$prod_old_price",style: TextStyle(color: Colors.red,decoration: TextDecoration.lineThrough),),
                  ),
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
