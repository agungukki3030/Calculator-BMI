import 'package:flutter/material.dart';
import 'dart:math';
import 'about_me.dart';

class BMIResult extends StatelessWidget {


  BMIResult({@required this.tinggiBadan, @required this.beratBadan, @required this.namaLengkap, @required this.tahunLahir, @required this.jk});
  final int tinggiBadan;
  final int tahunLahir;
  final int beratBadan;
  final String namaLengkap;
  final String jk;



  @override
  Widget build(BuildContext context) {
    double bmi = beratBadan/pow(tinggiBadan/100,2);
    String cBMI;
    if (bmi>=28) cBMI="OBESITAS";
    else if (bmi>=23) cBMI="GEMUK";
    else if (bmi>=17.5) cBMI="NORMAL";
    else cBMI="KURUS";


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL BMI'),
      ),
      body: Container(
        color: Colors.blueAccent,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,child: Container(
              color: Colors.blueAccent,
            ),),
            new Text(
              "Nama : ${namaLengkap}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
              ),
            ),
            SizedBox(height: 10,child: Container(
              color: Colors.blueAccent,
            ),),
            new Text(
              "Umur : ${2020 - tahunLahir} Tahun",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 10,child: Container(
              color: Colors.blueAccent,
            ),),
            new Text(
              "Jenis Kelamin : ${jk} ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 20,child: Container(
              color: Colors.blueAccent,
            ),),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.purple,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),


            Text(
              'Jangkauan Normal BMI',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],

        ),
      ),

    );
  }
}
