import 'package:flutter/material.dart';


import 'Isi.dart';


class detail extends StatefulWidget {
  detail({required this.namaKelas, required this.namaGuru});
  String namaKelas;
  String namaGuru;

  @override
  State<detail> createState() => _detail();

}


class _detail extends State<detail> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kegiatan1ab',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Detail " + widget.namaKelas,
            style: TextStyle(color: Colors.black, fontSize: 15,),
          ),
        ),
        body: Padding(
        padding: EdgeInsets.all(30.0),
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.account_circle_outlined,
                  size: 60,
                  color: Colors.blue,),
                title: Text('Nama',),
                  subtitle: Text(widget.namaGuru,),

              ),
              Container(
                height: 20,
              ),
              ListTile(
                leading: Icon(
                  Icons.class__rounded,
                  size: 60,
                  color: Colors.blue,),
                title: Text('Class'),
                subtitle: Text(widget.namaKelas),
                ),
            ],
          )

          ),
        )
    );

  }

}

