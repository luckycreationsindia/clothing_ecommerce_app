import 'package:clothing_ecommerce_app/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          TextField(
            style: const TextStyle(fontSize: 12),
            decoration: InputDecoration(
              prefixIcon: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.search),
              ),
              suffixIcon: const Icon(FontAwesomeIcons.filter),
              suffixIconColor: Theme.of(context).primaryColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: "Search",
              labelStyle: const TextStyle(fontSize: 14),
              hintStyle: const TextStyle(fontSize: 14),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent searches",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(">"),
            ],
          ),
          const Divider(),
          const Text(
            "Search results showing for “Shirt”",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                var image = "product1";
                var text = "Long Sleeve Shirts";
                if (index == 0) {
                  image = "product1";
                  text = "Long Sleeve Shirts";
                } else if (index == 1) {
                  image = "product2";
                  text = "Casual Henley Shirts";
                } else if (index == 2) {
                  image = "product3";
                  text = "Curved Hem Shirts";
                }
                return ProductItem(
                  onTap: () {},
                  image: Image.asset(
                    "images/$image.png",
                    height: 105,
                  ),
                  text: text,
                  price: 120,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
