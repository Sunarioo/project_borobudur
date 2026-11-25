import 'package:flutter/material.dart';
import 'package:project_borobudur/data/candi_data.dart';
import 'package:project_borobudur/models/candi.dart';
import 'package:project_borobudur/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // todo 1 appbar
      appBar: AppBar(title: const Text('Wisata Candi')),
      // todo 2 body
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: EdgeInsets.all(8),
        itemCount: candiList.length ,
        itemBuilder: (context, index) {
          Candi candi = candiList[index];
          return ItemCard(candi: candi,);
        }, 
        ),
    );
  }
}