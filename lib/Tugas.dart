
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tugas extends StatefulWidget{
  Tugas({required this.namaKelas});
  String namaKelas;
  @override
   State<Tugas> createState() => _tugas();
}

class _tugas extends State<Tugas> {
  String attachment = " ";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kegiatanc',
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
            widget.namaKelas,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2.0,
                      color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(20)),),

                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            child: Text(
                               "TUGAS 1",
                            style: TextStyle(fontSize : 18, fontFamily: 'Poppins'),),
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                          height: 0,
                          thickness: 2,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Container(
                          height: 10,
                        ),
                        Align(
                        alignment: Alignment.center,
                            child: Container(
                              child: Text(
                                attachment),
                              ),
                            ),


                        Column(
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: double.infinity,
                                    height: 35,

                                    child: ElevatedButton(
                                      child: const Text(
                                        "Upload Attachment",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (attachment ==
                                              " ") {
                                            attachment =
                                            "Tugas berhasil dikumpulkan";
                                          } else {
                                            attachment ==
                                                "Tugas belum dikumpulkan";
                                          }
                                        },);
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blueAccent,
                                          onPrimary: Colors.white,
                                          side: const BorderSide(
                                              color: Colors.blueAccent),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10.0),
                                          )
                                      ),
                                    )
                                )
                            )
                          ],
                        ),
                      ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
