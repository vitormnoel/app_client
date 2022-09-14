import 'package:connecting_api/api_acess/http_controller.dart';
import 'package:connecting_api/api_acess/data_questions/data_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Http')),
      // ignore: prefer_const_constructors
      body: controller.obx(
        (state) {
          return StreamBuilder<Object>(
            stream: null,
            builder: (_, index) {
              final DataModel item = state[1];
              return ListTile(
                title: Text(item.options![0]),
                subtitle: Text(item.enunciation),
              );
            },
          );
        },
        onError: (error) {
          return Center(
            child: Text(error.toString()),
          );
        },
      ),
    );
  }
}
