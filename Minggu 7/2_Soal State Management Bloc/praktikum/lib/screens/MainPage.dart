import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soal_state_management_bloc/bloc/minggu7_bloc.dart';
import '../data/images.dart';
import '../widgets/MainPageWidgets.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Minggu7Bloc, Minggu7State>(
      builder: (context, state){
        context.read<Minggu7Bloc>().add(GridOfImage());
        if (state is ShowImagesinGrid){
          return Scaffold(
            appBar: AppBar(title: Text('Minggu 7')),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
                  child: text(text: 'List Gambar',),
                ),

                ImagesInGrid(
                    context: context,
                    state: state,
                    itemCount: images.length,
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    width: MediaQuery.of(context).size.width/3,
                    height: MediaQuery.of(context).size.width/3,
                    imagepath: images,
                    bottomSheet_height: MediaQuery.of(context).size.height/2,
                    bottomSheet_color: Colors.black,
                    // bottomSheet_color: Color(0xff272829),
                    imageSize: MediaQuery.of(context).size.width/1.5,
                    function_NoButton: (){
                      Navigator.of(context).pop();
                    }
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}