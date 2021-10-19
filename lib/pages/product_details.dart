import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manjara/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Homepage()) );},
          child: Text("Manjara"),
        ),
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
              onPressed: null)
        ],
      ),
      body: new ListView(
        children: <Widget>[
          //_____________________________-IMAGE-_____________________
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "\u{20B9}${widget.product_detail_new_price}",
                        style: TextStyle(color: Colors.grey),
                      )),
                      Expanded(
                          child: new Text(
                        "\u{20B9}${widget.product_detail_old_price}",
                        style: TextStyle(
                            color: Colors.redAccent,
                            decoration: TextDecoration.lineThrough),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
//_________________________buttons________________
          Row(
            children: <Widget>[
              //__________________size button____________________________________
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context:context,
                    builder:(context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the size"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child:new Text('Close'))
                        ],
                      );
                    });

                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              //__________________Color button____________________________________

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context:context,
                        builder:(context){
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose the Color"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                  child:new Text('Close'))
                            ],
                          );
                        });},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              //__________________Quantity button____________________________________

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context:context,
                        builder:(context){
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Choose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                  child:new Text('Close'))
                            ],
                          );
                        });},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //_________________________Buy now buttons________________
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Buy Now",textAlign:TextAlign.center,)),
                    ],
                  ),
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){},color: Colors.red,),
              new IconButton(icon: Icon(Icons.favorite_border), onPressed: (){},color: Colors.red,),


            ],
          ),
          Divider(),
          //________________-Details-______________________
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("Product name",style: TextStyle(color: Colors.grey),),
              ),

              Padding(padding: const EdgeInsets.all(5),
                child: new Text(widget.product_detail_name),)
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("Product brand",style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: const EdgeInsets.all(5),
                child: new Text("BrandX"),)
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("Product condition",style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: const EdgeInsets.all(5),
                child: new Text("New"),)
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Similar Products"),
          ),
          //  similar product section_________________________________
          Container(
            height: 360,
            child: Similar_products(),
          )

        ],
      ),
    );
  }
}
class Similar_products extends StatefulWidget {
  const Similar_products({Key key}) : super(key: key);

  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      'name': "Blazer",
      'picture': "images/products/blazer1.jpeg",
      'old_price': 1200,
      'price': 1000,
    },
    {
      'name': "Dress",
      'picture': "images/products/dress1.jpeg",
      'old_price': 1000,
      'price': 800,
    },
    {
      'name': "hills",
      'picture': "images/products/hills1.jpeg",
      'old_price': 1000,
      'price': 800,
    },
    {
      'name': "Shoe",
      'picture': "images/products/shoe1.jpg",
      'old_price': 1200,
      'price': 1000,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  Similar_single_prod({
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
