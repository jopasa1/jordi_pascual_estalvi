import 'package:drift/drift.dart';

// assuming that your file is called filename.dart. This will give an error at
// first, but it's needed for drift to know about the generated code
part 'tables.g.dart';

// this will generate a table called "todos" for us. The rows of that table will
// be represented by a class called "Todo".
class Transactions extends Table {
  // Transaction(super.key,this.inOut, this.date, this.category, this.type, this.concept, this.sum);
  TextColumn get code => text()();
  TextColumn get inOut => text()();
  TextColumn get date => text()();
  TextColumn get category => text()();
  TextColumn get type => text()();
  TextColumn get concept => text()();
  IntColumn get sum => integer()();

  @override
  Set<Column> get primaryKey => {code};

}

// This will make drift generate a class called "Category" to represent a row in
// this table. By default, "Categorie" would have been used because it only
//strips away the trailing "s" in the table name.
@DataClassName('Movement')
class Movements extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
}

// this annotation tells drift to prepare a database class that uses both of the
// tables we just defined. We'll see how to use that database class in a moment.
@DriftDatabase(tables: [Transactions, Movements])
class MyDatabase extends _$MyDatabase {
}