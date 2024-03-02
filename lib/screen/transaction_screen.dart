import 'package:flutter/material.dart';

class Transacsation extends StatefulWidget {
  const Transacsation({super.key});

  @override
  State<Transacsation> createState() => _TransacsationState();
}

class _TransacsationState extends State<Transacsation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: IconButton(
                      onPressed: () {
                        // Kembali ke halaman sebelumnya saat tombol ditekan
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 50,
                        color: Colors.white,
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40)),
                    child: IconButton(
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        size: 45,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "F R U I T",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Pineaple",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/nanas.png',
                width: 300,
                height: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rp. 20.000',
                        style: TextStyle(
                            fontSize: 40,
                            color: const Color.fromARGB(255, 204, 140, 44),
                            fontWeight: FontWeight.w800),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text(
                            '5.0',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'per kg',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.red,
                              size: 50,
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.thumb_up,
                                size: 60,
                              )),
                        ),
                        Text(
                          "Quality",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "insurance",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.bike_scooter,
                                size: 60,
                              )),
                        ),
                        Text(
                          "Fast",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "Delivery",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.food_bank,
                                size: 60,
                              )),
                        ),
                        Text(
                          "Best-in",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "taste",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    )
                  ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            // Tambahkan logika untuk mengurangi angka di sini
                          },
                          iconSize: 32, // Ubah ukuran ikon di sini
                        ),
                        Text(
                          '0', // Ganti dengan variabel atau state untuk angka
                          style: TextStyle(
                              fontSize: 28), // Ubah ukuran teks di sini
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            // Tambahkan logika untuk menambah angka di sini
                          },
                          iconSize: 32, // Ubah ukuran ikon di sini
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            "go to cart",
                            style: TextStyle(fontSize: 30),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 35,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
