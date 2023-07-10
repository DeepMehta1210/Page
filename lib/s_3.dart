import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: ""),
        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            iconSize: 40,
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Discover",
            style: TextStyle(color: Colors.black, fontSize: 40)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 70,
                  height: 70,
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.airplanemode_active_sharp,
                          color: Colors.redAccent,
                          size: 30,
                        ),
                        Text(
                          "Flights",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 70,
                  height: 70,
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.bed,
                          color: Colors.purple,
                          size: 30,
                        ),
                        Text(
                          "Hotals",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 70,
                  height: 70,
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.fastfood,
                          color: Colors.green,
                          size: 30,
                        ),
                        Text(
                          "Food",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 70,
                  height: 70,
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.more_vert_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 3,
            ),
          ],
        ),
      ),
    );
  }
}
