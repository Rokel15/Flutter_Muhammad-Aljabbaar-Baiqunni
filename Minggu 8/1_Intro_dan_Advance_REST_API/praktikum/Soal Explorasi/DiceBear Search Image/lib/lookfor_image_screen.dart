import 'package:dicebear_search_image/dio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LookforImageScreen extends StatefulWidget {
  const LookforImageScreen({Key? key}) : super(key: key);

  @override
  State<LookforImageScreen> createState() => _LookforImageScreenState();
}

class _LookforImageScreenState extends State<LookforImageScreen> {
  bool isLoading = true;
  String image = '';

  TextEditingController inputController = TextEditingController();

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  void getImage() async{
    isLoading = false;
    image = await DioService().lookforImage(lookfor: inputController.text);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DiceBear Search Image'),),
      body: ListView(
        children: [
          isLoading==true? Center(child: Icon(Icons.image, size: MediaQuery.of(context).size.width/2,)) :
          (image.isNotEmpty ?
          SvgPicture.string(image, height: MediaQuery.of(context).size.width/2, width: MediaQuery.of(context).size.width/2,) :
          Center(child: CircularProgressIndicator())),

          // SizedBox(height: 30,),

          Container(margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: inputController,
              decoration: const InputDecoration(hintText: 'input text'),
            ),
          ),

          SizedBox(height: 50,),

          Center(
            child: ElevatedButton(
              child: const Text('generate'),
              style: ElevatedButton.styleFrom(side: BorderSide(color: Colors.purpleAccent)),
              onPressed: (){getImage();},
            ),
          )
        ],
      ),
    );
  }
}
