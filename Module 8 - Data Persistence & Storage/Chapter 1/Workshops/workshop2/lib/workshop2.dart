import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SQLite Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Database? _database;
  List<Map<String, dynamic>> _items = [];

  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

  Future<void> _initDatabase() async {
    final db = await openDatabase(
     p.join(await getDatabasesPath(), 'items_database.db'),                                                                                                    
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE items(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)',
        );
      },
    );

    _database = db;
    await _fetchItems();    
  }

  Future<void> _fetchItems() async {
    if (_database == null) return;

    final maps = await _database!.query('items');

    if (!mounted) return; 

    setState(() {
      _items = maps;
    });
  }

  Future<void> _addItem() async {
    if (_database == null) return;

    await _database!.insert(
      'items',
      {'name': 'New Item'},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    await _fetchItems();
  }

  Future<void> _deleteItem(int id) async {
    if (_database == null) return;

    await _database!.delete(
      'items',
      where: 'id = ?',
      whereArgs: [id],
    );

    await _fetchItems();
  }

  Future<void> _updateItem(int id, String newName) async {
    if (_database == null) return;
    await _database!.update(
      'items',
      {'name': newName},
      where: 'id = ?',
      whereArgs: [id],
    );

    await _fetchItems();
  }

  void _showUpdateDialog(int id, String currentName) {
    final controller = TextEditingController(text: currentName);

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) { 
        return AlertDialog(
          title: const Text("Update Item"),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: "Item Name",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () async {
                await _updateItem(id, controller.text);
                if (!mounted) return; 
                Navigator.of(dialogContext).pop();
              },
              child: const Text("Update"),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _database?.close(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQLite Example'),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () async {
              if (_database == null) return;

              await _database!.delete('items');
              await _fetchItems();
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];

          return ListTile(
            title: Text(item['name']),
            onTap: () => _deleteItem(item['id']),
            onLongPress: () =>
                _showUpdateDialog(item['id'], item['name']),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}