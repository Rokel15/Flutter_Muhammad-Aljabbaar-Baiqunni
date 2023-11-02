import 'package:dicebear/dio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiceBearScreen extends StatefulWidget {
  const DiceBearScreen({Key? key}) : super(key: key);

  @override
  State<DiceBearScreen> createState() => _DiceBearScreenState();
}

class _DiceBearScreenState extends State<DiceBearScreen> {
  String image = '';

  void getDiceBear() async{
    image = await DioService().getImageFromDiceBear();
  }

  @override
  void initState() {
    getDiceBear();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('contoh dicebear'),),
      body: ListView(
        children: [
          Center(
            child: SvgPicture.string(
              image,
              height: MediaQuery.of(context).size.width/2,
              width: MediaQuery.of(context).size.width/2,
            ),
          )
        ],
      ),
    );
  }
}