import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chackout")),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.yellow,
            height: 65,
            padding: const EdgeInsets.all(15),
            child: Column(
              children: const [
                Text(
                  "Delivery carefully to your door",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("its completely free"),
              ],
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(10),
            height: 130,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    image: DecorationImage(
                      image: AssetImage(
                        "Images/been_toy.jpg",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text(
                        "Been Toy",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("100% stuffed toy with cotton"),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Shipping Address",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("234 Forest Street Lincolnton, NC 28092"),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            height: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Delivery Method",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("2 Deliveries\nFrom French & Italy"),
                Text(
                  "Free Delivery",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Payment Method",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Select a Payment Method"),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Discount promocode...."),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Subtotal : ₹2000\nShipping : Free",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Total"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "",
                      ),
                      Text(
                        "₹2000.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        minimumSize: const Size(300, 50),
                        backgroundColor: Colors.orange,
                        shape: const StadiumBorder()),
                    child: const Text(
                      "Place Order",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
