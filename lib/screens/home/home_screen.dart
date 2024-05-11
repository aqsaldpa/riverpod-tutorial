import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/cart_provider.dart';
import 'package:riverpod_files/providers/products_provider.dart';
import 'package:riverpod_files/screens/home/widgets/cart_icon.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(productsProvider);
    // final cartProducts = ref.watch(cartNotifierProvider);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
        backgroundColor: const Color(0xfff8f8f8),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Hi, Jono.',
              style: textTheme.labelMedium!.copyWith(color: Colors.black),
            ),
          ),
          actions: const [
            CartIcon(),
          ],
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: [
              Text(
                'Silahkan pilih cluster terlebih dahulu',
                style: textTheme.labelLarge!.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 0.5,
                      blurRadius: 7,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Color(0xffF2613C),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Not set (belum diatur)",
                          style: textTheme.labelSmall!
                              .copyWith(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 35,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xff51A730),
                                Color(0xff28740B),
                              ]),
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Atur",
                                  style: textTheme.labelSmall!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0.5,
                            blurRadius: 7,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.search,
                                color: Colors.black26,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Cari produk yang anda inginkan",
                                style: textTheme.labelSmall!.copyWith(
                                    color: Colors.black26, fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Icon(
                    Icons.tune,
                    color: Colors.black26,
                  )
                ],
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 600,
                child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(20),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              allProducts[index].image,
                              width: 60,
                              height: 60,
                            ),
                          ),
                          Text(
                            allProducts[index].title,
                            style: textTheme.labelMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text("\$ ${allProducts[index].price}",
                              style: textTheme.labelMedium!),
                          const SizedBox(height: 10),
                          // if (cartProducts.contains(allProducts[index]))
                          //   Expanded(
                          //     child: ElevatedButton(
                          //         style: ElevatedButton.styleFrom(
                          //             backgroundColor: Colors.blue,
                          //             shadowColor: Colors.transparent,
                          //             elevation: 0,
                          //             shape: RoundedRectangleBorder(
                          //                 borderRadius:
                          //                     BorderRadius.circular(5))),
                          //         onPressed: () {
                          //           ref
                          //               .read(cartNotifierProvider.notifier)
                          //               .removeProduct(allProducts[index]);
                          //         },
                          //         child: Text("Hapus",
                          //             style: textTheme.labelMedium!
                          //                 .copyWith(color: Colors.white))),
                          //   ),
                          // if (!cartProducts.contains(allProducts[index]))
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff0A69C1),
                                  shadowColor: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7))),
                              onPressed: () {
                                ref
                                    .read(cartNotifierProvider.notifier)
                                    .addProduct(allProducts[index]);
                              },
                              child: Text("+ Keranjang",
                                  style: textTheme.labelSmall!
                                      .copyWith(color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ]));
  }
}
