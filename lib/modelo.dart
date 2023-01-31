import 'CRUD_base/CRUD_model_base.dart';
import 'models/library_model.dart';


class Modelo {
  static final Modelo _modelo = Modelo._internal();

  factory Modelo() {
    return _modelo;
  }

  Modelo._internal();

  final CRUD_Transaction crudTransaction = CRUD_Transaction();

  void add<T>(T item) {
    switch (T) {
      case Transaction:{
        crudTransaction.addItem(item as Transaction);
      }break;
      default:
        throw UnimplementedError("Type ${T.toString()} not supported.");
    }
  }

  void delete<T>(T item) {
    switch (T) {
      case Transaction:{
        crudTransaction.deleteItem(item as Transaction);
      }break;
      default:
        throw UnimplementedError("Type ${T.toString()} not supported.");
    }
  }

  void updateItem<T>(T originalItem, T updatedItem) {
    switch (T) {
      case Transaction:{
        crudTransaction.updateItem(updatedItem as Transaction);
      }break;
      default:
        throw UnimplementedError("Type ${T.toString()} not supported.");
    }
  }

  List<T> getAll<T>() {
    switch (T) {
      case Transaction:{
        List<Transaction> transactions = [];
        Map<String, Transaction> _datos = crudTransaction.datos;

        _datos.forEach((k, value) {transactions.add(value);});

        return transactions.cast();
      }
      default:
        throw UnimplementedError("Type ${T.toString()} not supported.");
    }
  }

  T? get<T extends Item>(dynamic codigo) {
    switch (T) {
      default:
        throw UnimplementedError("Type ${T.toString()} not supported.");
    }
  }
}
