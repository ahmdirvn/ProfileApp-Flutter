import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Ahmad Irvan Maulana';
  final String Location = 'Jepara, Jawa Tengah';
  final String description =
      '''Lahir di kota Jepara pada tanggal 29 april 2004.Seorang Mahasiswa Politeknik Negeri Semarang jurusan teknik Elektro dengan prodi Teknik Informatika, memiliki minat studi dalam bidang desain grafis, web developer dan content writer.  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 18, 66),
        title: Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/fotoku.jpeg',
              height: 200, width: 190, fit: BoxFit.fill),
          Container(
            height: 15,
          ),
          Column(
            children: [
              Container(
                width: 15,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(this.Location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ))
              ]),
              Container(
                width: 180,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
