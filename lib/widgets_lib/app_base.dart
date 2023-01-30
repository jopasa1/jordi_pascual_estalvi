import 'package:crud_framework/models/library_model.dart';
import 'package:flutter/material.dart';

class BaseApp extends StatelessWidget {
  const BaseApp(
      {Key? key,
      this.title = "CRUD Template",
      required this.body,
      this.actionButton})
      : super(key: key);

  final String title;
  final Widget body;
  final Widget? actionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
      floatingActionButton: actionButton,
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(10),child: Text("MENU",textAlign: TextAlign.center,),),
            Container(
              decoration:
                  BoxDecoration(color: Colors.blue,border: Border.all(width: 2,color: Colors.black)),
              child: ListTile(
                title: const Text("AUTHORS",textAlign: TextAlign.center,),
                onTap: () => Navigator.of(context).pushNamed('/author_list'),
              ),
            ),
            //Container(padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),color: Colors.lightBlueAccent,child: const Text("Evaluación",)),
          ],
        ),
      ),
    );
  }
}
