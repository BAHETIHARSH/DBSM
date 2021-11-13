import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
// my own imports
import 'components/horizontal_listview.dart';
import 'components/product.dart';
import 'package:manjara/pages/cart.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Homepage()));
}

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget ImageCarousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/banner1.jpg'),
          AssetImage('images/banner2.jpg'),
          AssetImage('images/banner3.jpg'),
        ],
        dotSize: 4,
        indicatorBgPadding: 2,
        // showIndicator: false,
        dotBgColor: Colors.transparent,
        autoplay: true,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 4000),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        title: Text("Manjara"),
        // centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Harsh Baheti"),
              accountEmail: Text("harshbaheti@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),

            // Body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.pink[500],),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.pink[500],),
              ),
            ),InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.pink[500],),
              ),
            ),InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart() ));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart,color: Colors.pink[500],),
              ),
            ),InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourite'),
                leading: Icon(Icons.favorite,color: Colors.pink[500],),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.pink[500],),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.pink[500],),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          ImageCarousel,
//_______________________Categories_______________________
          new Padding(padding: const EdgeInsets.all(8.0),
              child:new Text("Categories")),
        //  horizontal list begin
          HorizontalList(),
//______________padding Widget______________
          new Padding(padding: const EdgeInsets.all(10.0),
              child:new Text("Recent Products",
              style: TextStyle(fontWeight: FontWeight.bold),)),
          Flexible(
            child: Product(),
          )
        ],
      ),
    );
  }
}
