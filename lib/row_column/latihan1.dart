import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Flutter Layout',
      home: Scaffold(
       
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Center(
                     child: Image.network(
                      width: 130,
                      height: 200,
                      'https://images.squarespace-cdn.com/content/v1/5af1298bfcf7fd60f31f66bd/1670563522389-7VUCQMY4XBL5Q4CXVNMV/AVATAR+THE+LAST+AIRBENDER.png?format=500w'
                     
                     )
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Image.network(
                         width: 130,
                      'https://images.squarespace-cdn.com/content/v1/5af1298bfcf7fd60f31f66bd/1670563522389-7VUCQMY4XBL5Q4CXVNMV/AVATAR+THE+LAST+AIRBENDER.png?format=500w'
                     )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 120,
                     child: Center(
                      child: Image.network(
                        'https://cdn.cloudflare.steamstatic.com/steam/apps/1620030/header.jpg?t=1695398501'
                      ),),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('7 Fakta Aang sang Avatar'),               
                        Text('Fakta aang,'),               
                        Text('10-02-2024'),
                        Text('SELENGKAPNYA.'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.network(
                        'https://awsimages.detik.net.id/visual/2022/12/22/poster-film-avatar-2-1_169.png?w=650'
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Avatar Habiskan Rp 5,45 T,'),         
                        Text('berita Avatar Terbaru,'),             
                        Text('10-02-2024'),
                        Text('selengkapnya'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}