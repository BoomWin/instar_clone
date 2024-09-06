import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PochacoGram'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    const SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDVpREzBNzstHwAYj-N-du9w9-4VyekBfQMw&s'),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.bottomRight,
                      child: const Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 28,
                            height: 28,
                            child: FloatingActionButton(
                              onPressed: null,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: FloatingActionButton(
                              onPressed: null,
                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                const Text(
                  '포차코',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8,),
              ],
            ),
            const Column(
              children: [
                Text('3', style: TextStyle(fontSize: 18),
                ),
                Text('게시물'),
              ],
            ),
            const Column(
              children: [
                Text('0', style: TextStyle(fontSize: 18)
                ),
                Text('팔로워'),
              ],
            ),
            const Column(
              children: [
                Text('0', style: TextStyle(fontSize: 18)
                ),
                Text('팔로잉'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
