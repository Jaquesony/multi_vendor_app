import 'package:flutter/material.dart';
import 'package:multiple_vendor/views/buyers/nav_screens/cart_screen.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,left: 25,right: 15,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hello ,Asante kwakujiunga\n na App Yetu Karibu 👀',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CartScreen();
                }));
              },
              child: Image.asset(
                "assets/icons/cart.png",
                width: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
