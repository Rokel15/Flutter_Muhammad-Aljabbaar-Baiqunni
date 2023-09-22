import 'package:flutter/material.dart';
import 'package:get/get.dart';

Text text({required String text}){
  return Text(
    '${text}',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600
    ),
  );
}

GridView gridView({
  required BuildContext context,
  required int itemCount,
  required bool shrinkWrap,
  required int crossAxisCount,
  required double width,
  required double height,
  required imagepath,
  required bottomSheet_height,
  required Color bottomSheet_color,
  required imageSize,
  required Function() function_NoButton,
}){
  return GridView.builder(
      shrinkWrap: shrinkWrap,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
      ),
      itemBuilder: (_, index){
        final image = imagepath[index];
        return GestureDetector(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: width,
              height: height,
              child: Image.asset('${image}',
                fit: BoxFit.cover,
              ),
            ),
          ),
          onTap: (){
            show_GetBottomSheet(
              context: context,
              image: image,
              color: bottomSheet_color,
              bottomSheet_height: bottomSheet_height,
              imageSize: imageSize,
              function_NoButton: function_NoButton,
            );
          },
        );
      }
  );
}

show_GetBottomSheet({
  required BuildContext context,
  required image,
  required Color color,
  required double bottomSheet_height,
  required imageSize,
  required Function() function_NoButton,
}){
  return Get.bottomSheet(
    Container(
      width: double.infinity,
      height: bottomSheet_height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child:
      Column(
        children: [
          // Spacer(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                width: imageSize,
                height: imageSize,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xff293462),
                    borderRadius: BorderRadius.circular(15)
                  ),
                    child: Text('Ya')
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/NextPage', arguments: image);
                },
              ),

              GestureDetector(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFF4A4A)
                    ),
                    child: Text('Tidak')
                ),
                onTap: (){
                  function_NoButton();
                },
              ),
            ],
          )
        ],
      )

    )
  );
}