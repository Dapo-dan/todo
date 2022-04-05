import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/core/utils/extensions.dart';
import 'package:todo/app/modules/home/controller.dart';
import 'package:todo/app/widgets/icons.dart';

class AddCard extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icons = getIcons();
    var squareWidth = Get.width - 12.0.wp;
    
    return Container(
      width: squareWidth/2,
      margin: EdgeInsets.all(3.0.wp),
      height: squareWidth/2,
      child: InkWell(
        onTap: () {},
        child: DottedBorder(
          color: Colors.grey[400]!,
          dashPattern: const [8,4],
          child: Center(
            child: Icon(
              Icons.add,
              size: 10.0.wp,
              color: Colors.grey,
            ),
          ),
          )
      ),
    );
  }
}