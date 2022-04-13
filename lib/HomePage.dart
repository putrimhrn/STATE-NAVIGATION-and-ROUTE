import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:prak2/detail.dart';

import 'Isi.dart';
import 'Tugas.dart';


class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage>{
  final value = "hai";
@override
// ignore: dead_code
Widget build(BuildContext context) {
  Isi satu = Isi(
      namaKelas: 'Bahasa Indonesia A',
      namaGuru: 'Jeffrey Lampert'
  );
  Isi dua =  Isi(
      namaKelas: 'Algoritma Pemrograman H',
      namaGuru: 'Mike Elliot'
  );
  Isi tiga =  Isi(
      namaKelas: 'Bahasa Inggris A',
      namaGuru: 'Mark Amin'
  );
  return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
                'Google Classroom',
                style: TextStyle(color: Color(0xFF050505), fontSize: 22.0)
            ),
            leading: new Icon(Icons.menu, color :Color.fromARGB(195, 65, 56, 56),),
            actions: <Widget>[
              new Icon(
                Icons.account_circle_outlined,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              new Icon(
                  Icons.more_vert_outlined
                  , color : Color.fromARGB(195, 65, 56, 56))
            ],
          ),

          body :SingleChildScrollView(

              child : Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                    children : [
                      Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            image :DecorationImage(
                                image : AssetImage(
                                    "image/img_learnlanguage.jpg"
                                ),
                                fit : BoxFit.cover
                            ),
                            color: Colors.blue,
                            border: Border.all(width: 2.0,
                                color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),),

                          child:
                          InkWell(
                            onTap: (){Navigator.push(
                                context, MaterialPageRoute(builder: (context)=>
                                Tugas(namaKelas: satu.namaKelas),)
                            );
                            },


                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child :
                                  Column(

                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children :[

                                    Row(

                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(satu.getNamaKelas(),
                                              style : TextStyle(fontSize : 18, color : Colors.white)),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(Colors.redAccent.withOpacity(0.0)),
                                              ),
                                              child: IconButton(onPressed: ()async{
                                                await Navigator.of(context).push(MaterialPageRoute(
                                                    builder: (context) => detail(namaKelas: satu.namaKelas, namaGuru: satu.namaGuru)));},
                                                  icon: Icon(Icons.more_vert_outlined
                                                      , color : Colors.white)),
                                            ),)
                                        ]
                                    ),
                                    Container(
                                      height: 100,
                                    ),
                                    Text(satu.getNamaGuru(),
                                      textAlign : TextAlign.end,
                                      style : TextStyle(fontSize : 12, color : Colors.white),),
                                  ],

                              )
                          )
                      ),),
                      Container(
                        height: 20,
                      ),
                      Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            image :DecorationImage(
                                image : AssetImage(
                                    "image/img_breakfast_thumb.jpg"
                                ),
                                fit : BoxFit.cover
                            ),
                            color: Colors.blue,
                            border: Border.all(width: 2.0,
                                color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),),

                          child:
                          InkWell(
                              onTap: (){Navigator.push(
                                  context, MaterialPageRoute(builder: (context)=>
                                  Tugas(namaKelas: satu.namaKelas),)
                              );
                              },
                          child :
                          Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children :[
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(dua.getNamaKelas(),
                                            style : TextStyle(fontSize : 18, color : Colors.white)),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.redAccent.withOpacity(0.0)),
                                            ),
                                            child: IconButton(onPressed: () async{
                                              await Navigator.of(context).push(MaterialPageRoute(
                                                  builder: (context) => detail(namaKelas: dua.namaKelas, namaGuru: dua.namaGuru)));},
                                                icon: Icon(Icons.more_vert_outlined
                                                    , color : Colors.white)),
                                          ),)

                                      ]
                                  ),
                                  Container(
                                    height: 100,
                                  ),
                                  Text(dua.getNamaGuru(),
                                    textAlign : TextAlign.end,
                                    style : TextStyle(fontSize : 12, color : Colors.white),),
                                ],

                              )
                          )
                      ),
                      ),
                      Container(
                        height: 20,
                      ),
                      Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            image :DecorationImage(
                                image : AssetImage(
                                    "image/Chemistry_thumb.jpg"
                                ),
                                fit : BoxFit.cover
                            ),
                            color: Colors.blue,
                            border: Border.all(width: 2.0,
                                color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),),

                          child:
                          InkWell(
                              onTap: (){Navigator.push(
                                  context, MaterialPageRoute(builder: (context)=>
                                  Tugas(namaKelas: satu.namaKelas),)
                              );
                              },
                              child:
                          Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children :[
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(tiga.getNamaKelas(),
                                            style : TextStyle(fontSize : 18, color : Colors.white)),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.redAccent.withOpacity(0.0)),
                                            ),
                                            child: IconButton(onPressed: () async {
                                              await Navigator.of(context).push(MaterialPageRoute(
                                                  builder: (context) => detail(namaKelas: tiga.namaKelas, namaGuru: tiga.namaGuru)));},
                                                icon: Icon(Icons.more_vert_outlined
                                                    , color : Colors.white)),
                                          ),)
                                      ]
                                  ),
                                  Container(
                                    height: 100,
                                  ),
                                  Text(tiga.getNamaGuru(),
                                    textAlign : TextAlign.end,
                                    style : TextStyle(fontSize : 12, color : Colors.white),),
                                ],

                              )
                          )
                      )
                      ),
                    ]
                ),

              )
          )
      )
  );
}
}

