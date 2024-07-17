import 'package:flutter/material.dart';
import 'detail_wisata.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "sule",
      "kota": "bandung",
      "image": "assets/images/sull.png",
      "gallery": [
        "assets/images/sull1.png",
        "assets/images/sull2.png",
        "assets/images/sull3.png"
      ],
      "desc": "Pemilik nama lengkap Entis Sutisna ini lahir di Cimahi, Jawa Barat, pada tanggal 15 November 1976. Ia merupakan anak kedua dari empat bersaudara. Pelawak yang memiliki ciri khas prikitiew ini mulai dikenal ramai setelah menjadi bagian dalam Opera Van Java (OVJ) pada tahun 2008. Nama Sule sendiri merupakan kepanjangan dari Sunda Bule, karena rambutnya terjuntai panjang dan disemir warna kuning layaknya orang bule."
    },
    {
      "nama": "Fadil Jaidi",
      "kota": "Bekasi",
      "image": "assets/images/fadil.png",
      "gallery": [
        "assets/images/padil1.jpg",
        "assets/images/padil2.png",
        "assets/images/padil3.jpg"
      ],
      "desc": "Fadil Jaidi atau yang biasa dipanggil Fadil memiliki nama lengkapFadil Muhammad Jaidi. Fadil merupakan anak kedua dari tiga bersaudaradari pasangan keturunan Arab H. Muhammad Jaidi atau yang dikenaldengan nama panggilan Pak Muh dan Hj. Wardah Al Ganis, yang lahir pada17 Oktober 1994 di Bekasi, Jawa Barat. Ia memiliki seorang kakak laki-lakibernama Yislam Al Jaidi yang berprofesi sebagai seorang dokter danseorang adik perempuan bernama Dilla Jaidi. Fadil saat ini dikenal sebagaiseorang influencer, YouTuber, content creator, selebgram, dan pengusahayang namanya sedang naik daun di Indonesia. Selain itu Fadil juga sempatmembintangi beberapa judul film dan serial web serta merilis beberapasingle lagu. Pria lulusan London School of Public Relations (LSPR) jurusanIlmu Komunikasi ini telah mengawali karier di dunia entertainment sejakkecil lewat dunia seni peran sebagai aktor cilik salah satunya melaluisinetron berjudul “Tuyul dan Mbak Yul” di tahun 2002."
    },
    {
      "nama": "Ayu Ting Ting",
      "kota": "jakarta-selatan",
      "image": "assets/images/ayu.jpg",
      "gallery": [
        "assets/images/ayutingting1.jpg",
        "assets/images/ayutingting.jpg",
        "assets/images/ayutingting3.jpg"
      ],
      "desc": "Ayu Rosmalina atau yang lebih dikenal dengan nama panggung Ayu Ting Ting lahir di Depok, Jawa Barat, pada 20 Juni 1992. Ia merupakan putri sulung dari tiga bersaudara. Sayangnya, adik laki-laki Ayu yang bernama Narfazli Ade Ramdani meninggal dunia hanya dua bulan setelah dilahirkan.Ayah Ayu yang lebih dikenal sebagai Ayah Rozak telah bekerja di lingkungan pemerintahan daerah sejak 1982. Meski demikian, ia baru diangkat sebagai pegawai negeri sipil (PNS) pada 2001 setelah belasan tahun bekerja."
    },
    {
      "nama": "Gea",
      "kota": "bandung",
      "image": "assets/images/ghea.jpg",
      "gallery": [
        "assets/images/ghea1.jpg",
        "assets/images/ghea2.jpg",
        "assets/images/ghea3.jpg"
      ],
      "desc": "Ghea Youbi, nama asli Ghea Indrawari Youbi, adalah seorang penyanyi dangdut asal Bandung, Indonesia, yang lahir pada 4 April 2000. Ia mulai dikenal luas setelah merilis single Gak Ada Waktu Beib pada tahun 2018. Lagu ini sukses besar dan membuat namanya dikenal dalam industri musik dangdut Indonesia. Selain berkarier di musik, Ghea juga aktif di media sosial dan sering tampil di berbagai acara televisi, memperluas popularitasnya di kalangan generasi muda."
    },
    {
      "nama": "Gilang Dirga",
      "kota": "Sumatra Selatan",
      "image": "assets/images/gilang.jpg",
      "gallery": [
        "assets/images/gilang1.jpg",
        "assets/images/gilang2.jpg",
        "assets/images/gilang3.jpg"
      ],
      "desc": "Gilang Dirga, lahir pada 17 Agustus 1989 di Palembang, Sumatera Selatan, adalah seorang aktor, presenter, dan komedian Indonesia. Ia memulai kariernya sebagai finalis dalam ajang pencarian bakat Cover Boy pada tahun 2008. Gilang dikenal karena bakatnya dalam menirukan suara dan gaya berbagai selebriti, yang membuatnya populer dalam acara komedi dan hiburan. Selain itu, ia juga sering tampil sebagai pembawa acara di berbagai program televisi, seperti Opera Van Java dan D'Academy. Gilang Dirga menikah dengan Adiezty Fersa pada tahun 2016. Kariernya yang beragam dan kemampuannya dalam berakting, menyanyi, dan menjadi host menjadikannya salah satu entertainer serba bisa di Indonesia."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('kumpulan artis'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: wisataData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailWisataScreen(
                        nama: wisataData[index]["nama"],
                        kota: wisataData[index]["kota"],
                        image: wisataData[index]["image"],
                        gallery: wisataData[index]["gallery"],
                        desc: wisataData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(wisataData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    wisataData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
