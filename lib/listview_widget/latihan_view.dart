import 'package:flutter/material.dart';

class LatihanView extends StatelessWidget {
  LatihanView({super.key});

  final List<Map<String , dynamic>> ayam = [
   {
        'title' : "Ayam Fakhoy",
        'description' : "Ayam Pakhoy adalah salah satu ras ayam aduan modern unggulan yang berasal dari Thailand, khususnya wilayah Thailand Selatan atau wilayah utara.",
        'cover' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCJK6XH1Xa0fzL79wzf8HA8JtekcBHSAOfKNRiX_D9vQ&s=10"
      },
      {
        'title' : "Ayam Bangkok",
        'description' : "Ayam Bangkok adalah jenis ayam aduan atau unggas hias asal Thailand yang terkenal karena postur tubuh yang atletis, kuat, dan mental bertarungnya yang tangguh.",
        'cover' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8v0M8uo4kkZbzhJz31Km-Jc1AP-LogRMfXsADCzzktA&s=10"
      },
      {
        'title' : "Ayam pama",
        'description' : "Ayam Pama adalah jenis ayam petarung unggulan hasil persilangan antara ayam Birma (Burma) dan ayam Bangkok yang mayoritas dikembangkan di Thailand.",
        'cover' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH1VWRxUBNuDhsolC6rd8CCKdvWszShGdqPkdLrmspQlGQjvx1VQEux2pj&s=10"
      },
      {
        'title' : "Ayam Birma",
        'description' : "Ayam Birma adalah jenis ayam petarung yang berasal dari Myanmar (Burma). Ayam ini dikenal luas karena kelincahan, kecepatan, dan teknik bertarungnya yang unik.",
        'cover' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdVAN_MAe0hgJ2lDy5pQx2ppLvvAeD_R7L9E6QoJLmGSF7jtc1smiSGyw&s=10"
      },
      {
        'title' : "Ayam  Bulbi",
        'description' : "Ayam bulbi (sering disebut juga ayam Pama Bulbi) adalah jenis ayam hasil persilangan unggul yang populer di kalangan pecinta ayam aduan maupun penghobi unggas.",
        'cover' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRXmR04KJmTHN4f35hfhrUks1hdQiIJX_vzAvB8VQ3qA&s=10"
      },
    ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: ayam.length,
                itemBuilder: (context, index) {
                  final data = ayam[index];
                  return Container(
                    width: double.infinity,
                    height: 200,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(data['cover']),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          left: 8,
                          child: Container(
                            child: Text(
                              data['title'],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 8,
                          right: 8,
                          child: Container(
                            color: Colors.black54,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              data['description'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ayam.length,
                itemBuilder: (context, index) {
                  final data = ayam[index];
                  return Container(
                    width: 150,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(data['cover']),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        color: Colors.black54,
                        padding: EdgeInsets.all(4),
                        child: Text(
                          data['title'].toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}