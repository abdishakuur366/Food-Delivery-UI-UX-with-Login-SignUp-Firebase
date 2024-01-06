import 'package:flutter/material.dart';
import 'package:fooddelivery/constants.dart';
import 'package:fooddelivery/models/cart_products.dart';
import 'package:fooddelivery/screen/home.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    int num = 0;
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 38, right: 400, left: 10),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Home()));

                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 266),
            child: Text(
              "My cart",
              style: GoogleFonts.ubuntu(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: defaultPadding * 14),
                  itemCount: demoCartProducts.length,
                  itemBuilder: (context, index) {
                    return CardCart(demoCartProducts[index]);
                  },
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset('assets/images/shape11.png'),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 15,
                        width: 15,
                        child: Image.asset('assets/icons/coupons.png',
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        child: RichText(
                          text: TextSpan(
                            text: "Do you have coupon? ",
                            style: GoogleFonts.ubuntu(fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'apply',
                                style: GoogleFonts.ubuntu(
                                    fontSize: 14, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal: ",
                        style: GoogleFonts.ubuntu(
                            fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        "\$1200 ",
                        style: GoogleFonts.ubuntu(
                            fontSize: 16, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tax: ",
                        style: GoogleFonts.ubuntu(
                            fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        "\$200 ",
                        style: GoogleFonts.ubuntu(
                            fontSize: 16, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$1400',
                        style: GoogleFonts.ubuntu(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 40,
                        width: 200,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(0),
                              elevation: 0,
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ShoppingCart()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: defaultPadding,
                              ),
                              Text(
                                'Finilize Order',
                                style: GoogleFonts.ubuntu(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container CardCart(CartProducts cartProducts) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/shape10.png'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  cartProducts.image,
                  scale: 2.5,
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartProducts.title,
                        style: GoogleFonts.ubuntu(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        cartProducts.price,
                        style: GoogleFonts.ubuntu(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        cartProducts.category,
                        style: GoogleFonts.ubuntu(
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // margin: EdgeInsets.only(top: 20),
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
                                      borderRadius: BorderRadius.circular(15))),
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
                            //margin: EdgeInsets.only(top: 20),
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
                            //margin: EdgeInsets.only(top: 20),
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
                                      borderRadius: BorderRadius.circular(15))),
                              onPressed: () {},
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
