// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fooddelivery/constants.dart';
import 'package:fooddelivery/models/best_sellers_products.dart';
import 'package:fooddelivery/models/categories_icons.dart';
import 'package:fooddelivery/models/for_you_products.dart';
import 'package:fooddelivery/screen/product_details.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/images/shape1.png'),
                Padding(
                  padding: const EdgeInsets.only(
                    top: defaultPadding * 2,
                    // left: defaultPadding * 1,
                    // right: defaultPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.place_outlined,
                            size: 40,
                          ),
                          Text(
                            'Mogadishu, Somalia',
                            style: GoogleFonts.ubuntu(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: defaultPadding, top: 3),
                            child: ClipOval(
                              child: SizedBox(
                                height: 50,
                                child: Image.asset('assets/images/unnamed.jpg'),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Text(
                        'Hello\nUser',
                        style: GoogleFonts.ubuntu(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              padding: EdgeInsets.symmetric(
                                  horizontal: defaultPadding),
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.search_outlined,
                                    color: Colors.black,
                                  ),
                                  hintText: "Search...",
                                  hintStyle: TextStyle(
                                      color: Colors.black54, fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: defaultPadding * 2,
                      ),
                      SizedBox(
                        height: 120,
                        width: double.infinity,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.all(0),
                            itemCount: demoCategories.length,
                            itemBuilder: (context, index) {
                              return Categories(demoCategories[index]);
                            }),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Container(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Best Sellers",
                    style: GoogleFonts.ubuntu(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: demoBestSellesProducts.length,
                      itemBuilder: (context, index) {
                        return CardBestSellers(
                            context, demoBestSellesProducts[index]);
                      },
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  Text(
                    "For You",
                    style: GoogleFonts.ubuntu(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: demoProductsForYou.length,
                      itemBuilder: (context, index) {
                        return CardForYou(context, demoProductsForYou[index]);
                      },
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.all(defaultPadding),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Colors.white,
          elevation: 3,
          child: TabBar(
            labelColor: Colors.orangeAccent,
            unselectedLabelColor: Colors.black,
            controller: _tabcontroller,
            indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
            onTap: (value) {},
            tabs: [
              Icon(
                Icons.home_outlined,
                size: 30,
              ),
              Icon(
                Icons.favorite_outline,
                size: 30,
              ),
              Icon(
                Icons.shopping_basket_outlined,
                size: 30,
              ),
              Icon(
                Icons.person_outlined,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //For You Products
  Container CardForYou(BuildContext context, ProductsForYou productsForYou) {
    return Container(
      width: MediaQuery.of(context).size.width - defaultPadding * 4,
      margin: EdgeInsets.only(right: defaultPadding),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/shape2.png')),
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              productsForYou.image,
              scale: 2.7,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  productsForYou.title,
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  productsForYou.category,
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: defaultPadding,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: defaultPadding * 3, right: defaultPadding * 1.5),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.favorite_outline, size: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: defaultPadding * 1.5, right: defaultPadding * 1.5),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                productsForYou.price,
                style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetails(
                                  title: productsForYou.title,
                                  price: productsForYou.price,
                                  category: productsForYou.category,
                                  image: productsForYou.image,
                                )));
                  },
                  child: Image.asset(
                    'assets/images/shape2.png',
                    color: Colors.transparent,
                  ))),
        ],
      ),
    );
  }

//Bestsellers CardBestSellers

  Container CardBestSellers(
      BuildContext context, BestSellesProducts bestSellesProducts) {
    return Container(
      width: MediaQuery.of(context).size.width - defaultPadding * 4,
      margin: EdgeInsets.only(right: defaultPadding),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/shape2.png')),
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              bestSellesProducts.image,
              scale: 2.7,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  bestSellesProducts.title,
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  bestSellesProducts.category,
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: defaultPadding,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: defaultPadding * 3, right: defaultPadding * 1.5),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.favorite_outline, size: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: defaultPadding * 1.5, right: defaultPadding * 1.5),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                bestSellesProducts.price,
                style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetails(
                                  title: bestSellesProducts.title,
                                  price: bestSellesProducts.price,
                                  category: bestSellesProducts.category,
                                  image: bestSellesProducts.image,
                                )));
                  },
                  child: Image.asset(
                    'assets/images/shape2.png',
                    color: Colors.transparent,
                  ))),
        ],
      ),
    );
  }

  //Category Card

  Padding Categories(CategoriesIcons categoriesIcons) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Column(
              children: [
                Spacer(),
                SizedBox(
                  height: 50,
                  child: Image.asset(categoriesIcons.icon),
                ),
                Text(
                  categoriesIcons.title,
                  style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
