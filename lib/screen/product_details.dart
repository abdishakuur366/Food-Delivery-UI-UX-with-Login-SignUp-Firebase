import 'package:flutter/material.dart';
import 'package:fooddelivery/constants.dart';
import 'package:fooddelivery/models/for_you_products.dart';
import 'package:fooddelivery/screen/home.dart';
import 'package:fooddelivery/screen/shopping_cart.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails(
      {super.key,
      required this.title,
      required this.price,
      required this.image,
      required this.category});

  final String title, price, image, category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 2 / 3 +
                  defaultPadding * 3,
              child: Stack(
                children: [
                  Image.asset('assets/images/shape3.png'),
                  Container(
                    padding: EdgeInsets.only(
                        left: defaultPadding,
                        right: defaultPadding,
                        top: defaultPadding * 4),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (c) => Home()));
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                size: 30,
                              ),
                            ),
                            Icon(
                              Icons.favorite_outline,
                              size: 30,
                            )
                          ],
                        ),
                        Text(
                          category,
                          style: GoogleFonts.ubuntu(fontSize: 24),
                        ),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        Text(
                          title,
                          style: GoogleFonts.ubuntu(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Image.asset(
                          image,
                          scale: 2.2,
                        ),
                        SizedBox(
                          height: defaultPadding * 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFECEEED),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0),
                                    elevation: 0,
                                    primary: Colors.orange,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                onPressed: () {},
                                child: Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                // color: Color(0xFFECEEED),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFECEEED),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0),
                                    elevation: 0,
                                    primary: Colors.orange,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                price,
                                style: GoogleFonts.ubuntu(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                width: defaultPadding * 3,
                              ),
                              SizedBox(
                                height: 50,
                                width: 200,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0),
                                      elevation: 0,
                                      primary: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ShoppingCart()));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: defaultPadding,
                                      ),
                                      Text(
                                        'Add',
                                        style: GoogleFonts.ubuntu(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: defaultPadding * 2,
            ),
            Container(
              height: 400,
              child: Stack(
                children: [
                  Image.asset('assets/images/shape4.png'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: defaultPadding * 3,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: defaultPadding * 2),
                        child: Text(
                          'Related',
                          style: GoogleFonts.ubuntu(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      SizedBox(
                        height: defaultPadding * 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: defaultPadding,
                        ),
                        child: SizedBox(
                          height: 230,
                          width: double.infinity,
                          child: ListView.builder(
                            padding: EdgeInsets.all(0),
                            scrollDirection: Axis.horizontal,
                            itemCount: demoProductsForYou.length,
                            itemBuilder: (context, index) {
                              return CardRelated(demoProductsForYou[index]);
                            },
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container CardRelated(ProductsForYou productsForYou) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(right: defaultPadding * 2),
            child: Image.asset('assets/images/shape5.png'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                productsForYou.image,
                scale: 3,
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(
                  bottom: defaultPadding * 2,
                  left: defaultPadding * 2,
                  right: defaultPadding,
                ),
                width: 230,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      productsForYou.title,
                      style: GoogleFonts.ubuntu(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      productsForYou.price,
                      style: GoogleFonts.ubuntu(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
