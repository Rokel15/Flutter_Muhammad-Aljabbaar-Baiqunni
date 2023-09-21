import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();

  Color _currentColor = Colors.orange;

  void _pickFile() async{
    final result = await FilePicker.platform.pickFiles();
    if(result == null) return;

    final file = result.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file){
    OpenFile.open((file.path));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Advance'),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            //buildDatePicker
            buildDatePicker(context),

            SizedBox(
              height: 20,
            ),
            //buildColorPicker
            buidColorPicker(context),

            //buildFilePicker
            buildFilePicker(context),
          ],
        ),
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Date'),
            TextButton(
                child: Text('select'),
                onPressed: () async{
                  final selectDate = await showDatePicker(
                      context: context,
                      initialDate: currentDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(currentDate.year + 5));

                  setState(() {
                    if (selectDate != null){
                      _dueDate = selectDate;
                    }
                  });
                }
            )
          ],
        ),
        Text(DateFormat('dd-MM-yyyy').format(_dueDate))
      ],
    );
  }

  buidColorPicker(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Color'),
        SizedBox(height: 10,),
        Container(
          height: 100,
          width: double.infinity,
          color: _currentColor,
        ),
        SizedBox(height: 13,),
        Center(
          child: ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //   backgroundColor: Colors.grey
            // ),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(_currentColor)),
              child: Text('pick color', style: TextStyle(color: Colors.black),),
              onPressed: (){
              showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text('pick your color'),
                      content:
                      //menggunakan BlockPicker
                      // BlockPicker(
                      //   pickerColor: _currentColor,
                      //   onColorChanged: (color){
                      //     setState(() {
                      //       _currentColor = color;
                      //     });
                      //   },
                      // ),

                      //menggunakan ColorPicker
                      // ColorPicker(
                      //     pickerColor: _currentColor,
                      //     onColorChanged: (color){
                      //       setState(() {
                      //         _currentColor = color;
                      //       });
                      //     }
                      //),

                      //menggunakan SlidePicker
                      SlidePicker(
                        pickerColor: _currentColor,
                        onColorChanged: (color){
                          setState(() {
                            _currentColor = color;
                          });
                        },
                      ),

                      actions: [
                        TextButton(
                            child: Text('save'),
                            onPressed: (){
                              Navigator.pop(context);
                            }
                        )
                      ],
                    );
                  });
              }
          ),
        )
      ],
    );
  }

  buildFilePicker(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('pick file'),
        SizedBox(height: 10,),
        Center(
          child: ElevatedButton(
              child: Text('pick and open file'),
              onPressed: (){
                _pickFile();
              }
          ),
        )
      ],
    );
  }


}
