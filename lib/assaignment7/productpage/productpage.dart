import 'package:flutter/material.dart';
import 'package:module6/assaignment7/cartpage/cartpage.dart';


import '../product/product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key,required this.products});

  final List<Product>products;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool istap= false;
  void control(){
    setState(() {
      istap=! istap;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Product List')),
        actions: [
          Icon(Icons.shopping_cart)
        ],
      ),
      body: ListView.builder(
          itemCount: widget.products.length,
          itemBuilder: (context,index){
        return ListTile(
          title: Text(widget.products[index].product),
          subtitle: Text('Price: \$${widget.products[index].price}'),
          trailing: Column(
            children: [
              Text('Quantity: ${widget.products[index].quantity}'),

            
            
            ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>
                    AlertDialog(
                      title: Text('Congratulations!'),
                      content: Text("You've bought 5 Products 2!"),
                      actions: [
                       InkWell(
                         onTap: (){
                           Navigator.of(context).push(
                               MaterialPageRoute(builder: (context)=>CartPage()));
                         },
                         child: Text('Ok'),
                       )
                      ],
                    )

                    ));

            },
                child: Text('Buy Now'))

            ],
          ),
        );
      })
    );
  }
}
