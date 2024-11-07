import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/AppProvider.dart';
import '../Widgets/widgetNews.dart';


class Appscreen extends StatelessWidget {
  const Appscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Consumer<AppProvider>(builder: (context, object,child) {
        var provider = object.appModel;
        if(provider == null){
            object.fetchapp();
            return const Center(child: CircularProgressIndicator());
        }
        else{
          final result =  provider.data;
          return ListView.separated(itemBuilder:(context, index) => TaskTitle(
            title: result[index]["title"],
            description: result[index]["description"],
            image: result[index]["urlToImage"],
          ) , separatorBuilder:(context, index) =>   const SizedBox(height: 10,), itemCount: result.length);
        }
      }
      ),
    );
  }
}
