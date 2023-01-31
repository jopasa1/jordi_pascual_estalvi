import 'package:crud_framework/CRUD_base/CRUD_model_base.dart';
import 'package:crud_framework/CRUD_base/CRUD_view_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Transaction extends Item<String>{

  final String inOut;
  final String date;
  final String category;
  final String type;
  final String concept;
  final int sum;

  Transaction(super.key,this.inOut, this.date, this.category, this.type, this.concept, this.sum);

  @override
  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    Map<String,dynamic> trasnsactionMap={
      'key':super.key,
      'inOut':this.inOut,
      'date':this.date,
      'category':this.category,
      'type':this.type,
      'concept':this.concept,
      'sum':this.sum,
    };
    return trasnsactionMap;
    //throw UnimplementedError();
  }

}

//SABEMOS QUE NO TENEMOS QUE IMPLEMENTARLA!!!
class CRUD_Transaction implements CRUDModelBase<String,Transaction>{

  final Map<String,Transaction> _datos ={};

  @override
  void addItem(transaction) {
    // TODO: implement addItem
    String key=transaction.key;
    if (_datos.containsKey(key)) {
      throw ArgumentError("Ja existeix un item amb la clau $key");
    }
    _datos[key]=transaction;
  }

  @override
  // TODO: implement datos
  Map<String,Transaction> get datos => _datos;

  @override
  void updateItem(transaction) {
    // TODO: implement updateItem
    String key=transaction.key;
    if (_datos.containsKey(key)) {
      _datos[key]=transaction;
    } else {
      throw ArgumentError("No existeix cap item amb la clau $key");
    }

  }
  
  void deleteItem(transaction){
    String key=transaction.key;
    if (_datos.containsKey(key)) {
      _datos.remove(key);
    } else {
      throw ArgumentError("No existeix cap item amb la clau $key");
    }
  }
}