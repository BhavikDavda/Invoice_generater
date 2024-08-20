import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/global.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String selected = "All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        //cart button
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "Cartpage");
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Advertisements
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 210,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(advertisements[0]["image"]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 3),
                    color: Colors.blueGrey.shade200,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                ),
              ),
              // categories
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Categories...",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // action chip
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Wrap(
                    spacing: 8.0, // Adjust the spacing as needed
                    children: [
                      ActionChip(
                        backgroundColor: selected == "All"
                            ? Colors.lightBlueAccent
                            : Colors.grey.shade200,
                        label: Text(
                          "All",
                          style: TextStyle(
                            color: selected == "All"
                                ? Colors.black
                                : Colors.grey.shade700,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            selected = "All";
                          });
                        },
                      ),
                      ActionChip(
                        backgroundColor: selected == "laptops"
                            ? Colors.lightBlueAccent
                            : Colors.grey.shade200,
                        label: Text(
                          "Laptops",
                          style: TextStyle(
                            color: selected == "laptops"
                                ? Colors.black
                                : Colors.grey.shade700,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            selected = "laptops";
                          });
                        },
                      ),
                      ActionChip(
                        backgroundColor: selected == "mobiles"
                            ? Colors.lightBlueAccent
                            : Colors.grey.shade200,
                        label: Text(
                          "Mobiles",
                          style: TextStyle(
                            color: selected == "mobiles"
                                ? Colors.black
                                : Colors.grey.shade700,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            selected = "mobiles";
                          });
                        },
                      ),
                      ActionChip(
                        backgroundColor: selected == "smartvs"
                            ? Colors.lightBlueAccent
                            : Colors.grey.shade200,
                        label: Text(
                          "Smartvs",
                          style: TextStyle(
                            color: selected == "smartvs"
                                ? Colors.black
                                : Colors.grey.shade700,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            selected = "smartvs";
                          });
                        },
                      ),
                      ActionChip(
                        backgroundColor: selected == "sunglasses"
                            ? Colors.lightBlueAccent
                            : Colors.grey.shade200,
                        label: Text(
                          "Sunglasses",
                          style: TextStyle(
                            color: selected == "sunglasses"
                                ? Colors.black
                                : Colors.grey.shade700,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            selected = "sunglasses";
                          });
                        },
                      ),
                      ActionChip(
                        backgroundColor: selected == "home_decor"
                            ? Colors.lightBlueAccent
                            : Colors.grey.shade200,
                        label: Text(
                          "Home Decor",
                          style: TextStyle(
                            color: selected == "home_decor"
                                ? Colors.black
                                : Colors.grey.shade700,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            selected = "home_decor";
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // Laptops Section
              Visibility(
                visible: selected == "laptops" || selected == "All",
                child: SizedBox(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: poduct.laptoplist.map((e) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed("Detailpage", arguments: e);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              children: [
                                Container(
                                  width: 170,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.white10,
                                    border: Border.all(
                                        color: Colors.grey, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          e['thumbnail'],
                                          width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 150,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                e['title'],
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                                maxLines: 1,
                                                softWrap: false,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Text(
                                              '${e['rating']}',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          'Rs. ${e['price']}',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),

              // Mobiles Section
              Visibility(
                visible: selected == 'mobiles' || selected == 'All',
                child: SizedBox(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: poduct.Smartphones.map((e) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed("Detailpage", arguments: e);
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 170,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.white10,
                                    border: Border.all(
                                        color: Colors.grey, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.network(
                                          e['thumbnail'],
                                          width: 130,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 150,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                e['title'],
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                                maxLines: 1,
                                                softWrap: false,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Text(
                                              '${e['rating']}',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          'Rs. ${e['price']}',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),

              // Smart TVs Section
              Visibility(
                visible: selected == 'smartvs' || selected == 'All',
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: poduct.Smartvs.map((e) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed("Detailpage", arguments: e);
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 170,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      color: Colors.white10,
                                      border: Border.all(
                                          color: Colors.grey, width: 3),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.network(
                                            e['thumbnail'],
                                            fit: BoxFit.cover,
                                            width: 130,
                                            height: 120,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 150,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  e['title'],
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                  maxLines: 1,
                                                  softWrap: false,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              Text(
                                                '${e['rating']}',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            'Rs. ${e['price']}',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),

              // Sunglasses Section
              Visibility(
                visible: selected == 'sunglasses' || selected == 'All',
                child: SizedBox(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: poduct.Sunglasses.map((e) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed("Detailpage", arguments: e);
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 170,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.white10,
                                    border: Border.all(
                                        color: Colors.grey, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          e['thumbnail'],
                                          width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 150,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                e['title'],
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                                maxLines: 1,
                                                softWrap: false,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Text(
                                              '${e['rating']}',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          'Rs. ${e['price']}',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),

              // Home Decor Section
              Visibility(
                visible: selected == 'home_decor' || selected == 'All',
                child: SizedBox(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: poduct.Home_Decorating.map((e) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed("Detailpage", arguments: e);
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 170,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.white10,
                                    border: Border.all(
                                        color: Colors.grey, width: 3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.network(
                                            e['thumbnail'],
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 150,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                e['title'],
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                                maxLines: 1,
                                                softWrap: false,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Text(
                                              '${e['rating']}',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          'Rs. ${e['price']}',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
