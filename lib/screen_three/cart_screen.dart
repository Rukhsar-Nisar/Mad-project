import 'package:flutter/material.dart';
import 'package:sample_project/appbars/appbar_buttons.dart';
import 'package:sample_project/screen_three/cart_product.dart';
import 'package:sample_project/themes/color.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
  leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.orange),
    onPressed: () {
      print("more");
      Navigator.pop(context); // Navigate back to the previous screen
    },
  ),
),

      body: CartItemsCard(cartItems: demoCart),
      bottomNavigationBar: const CheckoutCart(),
    );
  }

 
}

class CartItemsCard extends StatelessWidget {
  final List<CartItem> cartItems;

  const CartItemsCard({
    super.key,
    required this.cartItems,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: cartItems.map((cartItem) {
        return CartItemCard(cartItem: cartItem);
      }).toList(),
    );
  }
}

class CartItemCard extends StatelessWidget {
  final CartItem cartItem;

  const CartItemCard({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: kGreyColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(cartItem.product.image[0]),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItem.product.title,
                  style: const TextStyle(
                    fontSize: 16, 
                    color: Colors.black,
                    fontWeight: FontWeight.bold,),
                  maxLines: 2,
                ),
                const SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    text: '\$${cartItem.product.price}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                    children: [
                      TextSpan(
                        text: ' x${cartItem.numOfItems}',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 208, 201, 201),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            color: null,
            onPressed: () {
              demoCart.remove(cartItem);
            },
          ),
        ],
      ),
    );
  }
}

class CheckoutCart extends StatelessWidget {
  const CheckoutCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text.rich(
                TextSpan(
                  text: 'Total:',
                  children: [
                    TextSpan(
                      text: '\$35',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 190,
                child: DefaultButton(
                  text: 'Check Out',
                  press: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback press;

  const DefaultButton({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
      ),
      child: Text(text),
    );
  }
}
