import 'package:flutter/material.dart';
import 'package:untitled/create/create_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  final List<String> _urls = const [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDVpREzBNzstHwAYj-N-du9w9-4VyekBfQMw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDVpREzBNzstHwAYj-N-du9w9-4VyekBfQMw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDVpREzBNzstHwAYj-N-du9w9-4VyekBfQMw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDVpREzBNzstHwAYj-N-du9w9-4VyekBfQMw&s",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 화면 이동
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreatePage()),
          );
        },
        child: Icon(Icons.create),
      ),
      appBar: AppBar(
        title: const Text("Pochaco World"),
      ),
      body: GridView.builder(
        itemCount: _urls.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          final url = _urls[index];
          return Image.network(
            url,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
