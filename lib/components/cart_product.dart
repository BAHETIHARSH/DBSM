import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key key}) : super(key: key);

  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      'name': "Blazer",
      'picture': "images/products/blazer1.jpeg",
      'price': 1000,
      'size' : "XL",
      'color': "Red",
      'quantity' : 1,
    },
    {
      'name': "Dress",
      'picture': "images/products/dress1.jpeg",
      'price': 800,
      'size' : "M",
      'color': "Red",
      'quantity' : 1,
    },
    {
      'name': "hills",
      'picture': "images/products/hills1.jpeg",
      'price': 800,
      'size' : "8",
      'color': "Red",
      'quantity' : 1,
    },
    {
      'name': "Shoe",
      'picture': "images/products/shoe1.jpg",
      'price': 1000,
      'size' : "10",
      'color': "Red",
      'quantity' : 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount :Products_on_the_cart.length,
        itemBuilder: (context,index){
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]['name'],
            cart_prod_picture: Products_on_the_cart[index]['picture'],
            cart_prod_price: Products_on_the_cart[index]['price'],
            cart_prod_size: Products_on_the_cart[index]['size'],
            cart_prod_color: Products_on_the_cart[index]['color'],
            cart_prod_qty: Products_on_the_cart[index]['quantity'],
          );
        })
    ;
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;
  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture,width: 50,),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size :"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_size),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                    child: new Text("Color :"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_prod_color),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),
            )
          ],
        ) ,
        // trailing: Column(
        //   children: <Widget>[
        //     Expanded(child: new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){})),
        //     Expanded(child:new Text("${cart_prod_qty}")),
        //     Expanded(child:new  IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})),
        //   ],
        // ),
      ),
    );
  }
}
