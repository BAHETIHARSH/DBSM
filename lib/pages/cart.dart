import 'package:flutter/material.dart';
//my imports
import 'package:manjara/components/cart_product.dart';

class Cart extends StatefulWidget {
  const Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Cart"),
        // centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),

        ],
      ),


      body: new Cart_products(),


      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Totals :"),
              subtitle: new Text("\$230"),
            )
            ),
            Expanded(
                child: new MaterialButton(onPressed: (){},
                color: Colors.red,
                child: Text('Check Out',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
                ),)
            ),

          ],
        ),
      ),
    );
  }
}
