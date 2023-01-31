
import 'dart:ffi';

import 'package:crud_framework/CRUD_base/CRUD_view_base.dart';
import 'package:crud_framework/models/library_model.dart';
import 'package:crud_framework/widgets_lib/app_base.dart';
import 'package:crud_framework/widgets_lib/widgets.dart';
import 'package:flutter/material.dart';

import 'CRUD_base/CRUD_list_base.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '- SAVINGS ACCOUNT -',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/transaction_list': (context) => CRUDListBase<Transaction>(
            itemBuilder: createCards, addItemRoute: '/transaction_add', viewItemRoute: '/transaction_view'),
        '/transaction_add': (context) => CRUDViewBase<Transaction>(detailedView: detailDialog,editFormView: CRUD_View_Transaction(),)
      },
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case '/transaction_view':
            {
              return MaterialPageRoute(builder: (context) =>
                  CRUDViewBase<Transaction>(item: routeSettings.arguments as Transaction,
                    detailedView: detailDialog,
                    editFormView: CRUD_View_Transaction(oTransaction: routeSettings.arguments as Transaction,),));
            }
        }
        return null;
      },
      home: const MyHomePage(title: 'CRUD Template'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const BaseApp(body: Text("[WIP] ACCOUNT BALANCE"));
  }
}