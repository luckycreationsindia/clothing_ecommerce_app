import 'package:clothing_ecommerce_app/utils/constants.dart';
import 'package:clothing_ecommerce_app/widgets/category_story.dart';
import 'package:clothing_ecommerce_app/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "best Outfits for you",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
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
                      child: Icon(Icons.search),
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
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      var image = "category1";
                      var text = "Dress";
                      if (index == 0) {
                        image = "category1";
                        text = "Dress";
                      } else if (index == 1) {
                        image = "category2";
                        text = "Shirt";
                      } else if (index == 2) {
                        image = "category3";
                        text = "Pants";
                      } else {
                        image = "category4";
                        text = "Tshirt";
                      }
                      return CategoryStory(
                        onTap: () {},
                        image: Image.asset("images/$image.png"),
                        text: text,
                        selected: index == 1,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      "New Arrival",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 205,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
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
                        onTap: () => context.go(RouteConstants.productsRoutePath),
                        image: Image.asset("images/$image.png"),
                        text: text,
                        price: 120,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: Colors.black54,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                  size: 30,
                  color: Colors.black54,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_2_outlined,
                  size: 30,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
