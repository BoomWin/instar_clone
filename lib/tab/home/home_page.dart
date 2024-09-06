import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instargram Clone'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 공간을 주기위해서 만든거임.
            const SizedBox(height: 20,),
            const Text('Instargram come on',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20,),
            const Text('사진과 동영상을 보려면 팔로우하세요'),
            Card(
              // 그림자.
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDVpREzBNzstHwAYj-N-du9w9-4VyekBfQMw&s'),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text('가수민포차코좋아함@pochaco.com', style: TextStyle(
                      fontWeight: FontWeight.bold
                      ),
                    ),

                    const Text('닉네임'),
                    const SizedBox(height: 8),

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDVpREzBNzstHwAYj-N-du9w9-4VyekBfQMw&s", width: 70 , height : 70, fit: BoxFit.cover),
                        const SizedBox(width: 4,),
                        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6jhzI-E0JSsfxskk4O7Uyf01c14H-O0mMPQ&s", width: 70 , height : 70, fit: BoxFit.cover),
                        const SizedBox(width: 4,),
                        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNVHBi5v3jqqws4G6owND7DHX7YtCz_e4Jlw&s", width: 70 , height : 70, fit: BoxFit.cover),
                      ],
                    ),
                    const SizedBox(height: 8),

                    const Text('Facebook 친구'),
                    const SizedBox(height: 8),

                    ElevatedButton(
                        onPressed: () {},
                        child: const Text('팔로우')
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
