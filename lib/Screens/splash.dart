import 'dart:async';
import 'package:flutter/material.dart';
import 'package:notpad/Screens/note.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
          ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder:(context) => const Note()))
  );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset('assets/note.png' , fit: BoxFit.cover,),
    ) ;
  }
}