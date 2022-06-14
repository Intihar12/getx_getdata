import 'package:api_sigi/controller/artistcontroller/artistcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(ArtistController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: controller.obx((data) {
      return ListView.builder(
          itemCount: data!.quotes!.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(data.quotes![index].author!),
            );
          });
    }));
  }
}
