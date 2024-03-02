import 'package:flutter/material.dart';
import 'package:uh_ddg_m_raditya_a_w_xi_pplg_2/screen/transaction_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  
  Widget _foodItem(String image, String text, String harga) {
    return Material(
      elevation: 4,
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(
              builder: (_) => Transacsation(),
            ),
          );
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(100),
              ),
              height: 260,
              width: 210,
            ),
            // Stack Baru di Atas Container Pertama
            Positioned(
              top: -80,
              right: 0.1,
              left: 0.1, // Sesuaikan dengan posisi yang diinginkan
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                height: 260,
                width: 220,
                child: Image(image: AssetImage(image)),
              ),
            ),
            // Container Kedu
            Positioned(
              top: 130,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            "F R U I T",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.orange,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Icon(Icons.star, color: Colors.orange),
                        Text(
                          '5.0',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        text,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              harga,
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 25),
                            ),
                            Text(
                              'per KG',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ]),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 88, 87, 87),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                height: 160,
                width: 210,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Mengubah background color menjadi hitam
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 32.0,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            // Tambahkan aksi ketika ikon diklik jika diperlukan
                          },
                          child: IconButton(
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              size: 32.0,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            // Tambahkan aksi ketika ikon diklik jika diperlukan
                          },
                          child: Card(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              // Isi container di sini sesuai kebutuhan
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                      width: 370,
                      height: 270,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      bottom: 10,
                      child: ElevatedButton(
                        onPressed: () {
                          // Tambahkan aksi ketika tombol ditekan di sini
                        },
                        child: Text(
                          "View More",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber
                        ),
                      ),
                    ),
                    Positioned(
                      right: -29,
                      top: -40,
                      child: Image.asset(
                        'assets/basketfood.png',
                        width: 300,
                        height: 300,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Container(
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              child: Text(
                                "O F F E R",
                                style: TextStyle(
                                    fontSize: 19, color: Colors.amber),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 15),
                              child: Text(
                                "DISCOUNT up to 40% off",
                                style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "In honor of World Health Day we'd ",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "like to give you this amazing.",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                              child: Text(
                                "offers",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recomended Fruits",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          FloatingActionButton.extended(
                            onPressed: () {},
                            label: Text(
                              "View All",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.amber,
                              ),
                            ),
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          Positioned(
                            right: -10,
                            child: IconButton(
                              onPressed: () {
                                // Tambahkan aksi ketika tombol ditekan di sini
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.amber,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                alignment: WrapAlignment.spaceAround,
                children: <Widget>[
                  _foodItem("nanas.png", "Pinapple", "RP. 20.000"),
                  SizedBox(
                    height: 330,
                  ),
                  _foodItem("apple.png", "Apple", "RP. 25.000"),
                  SizedBox(
                    height: 330,
                  ),
                  _foodItem("nanas.png", "Apple", "RP. 25.000"),
                  SizedBox(
                    height: 330,
                  ),
                  _foodItem("apple.png", "Apple", "RP. 25.000"),
                  SizedBox(
                    height: 330,
                  ),
                  _foodItem("nanas.png", "Apple", "RP. 25.000"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
