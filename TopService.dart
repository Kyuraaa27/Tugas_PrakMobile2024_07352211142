import 'package:flutter/material.dart';

Widget TopService(String imagePath, String profileImagePath, double rating) {
  // @override

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      height: 170, // Tentukan tinggi container
      child: Stack(
        clipBehavior: Clip.none, // Agar bagian yang menonjol terlihat
        children: [
          // Kiri
          Positioned(
            left: 20,
            top: 0,
            child: Container(
              width: 200,
              height: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Kanan
          Positioned(
            right: 20,
            top: 20,
            child: Container(
              width: 250,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 47, 255, 0).withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: ClipOval(
                    child: Image.asset(
                      profileImagePath,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pak Vincent',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'The Special One',
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 7, 163, 15),
                        ),
                      ),
                      Text(
                        'Saya Kan Orangnya Dua',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                rating
                                    .toString(), // Display the rating number next to the star
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 4, 131, 25),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              'Buy Now',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    ),
  );
}
