import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/cart_provider.dart';
import 'package:riverpod_files/screens/cart/cart_screen.dart';

class CartIcon extends ConsumerWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final numberCart = ref.watch(cartNotifierProvider).length;
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 10),
      child: Stack(
        children: [
          IconButton(
            onPressed: () {
              if (numberCart == 0) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Your cart is empty !")));
              } else {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CartScreen();
                }));
              }
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
          Positioned(
            top: 5,
            left: 25,
            child: Container(
              width: 15,
              height: 17,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.redAccent,
              ),
              child: Text(
                numberCart.toString(),
                style: textTheme.labelSmall!
                    .copyWith(fontSize: 10, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
