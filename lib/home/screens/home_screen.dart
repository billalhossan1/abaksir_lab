import 'package:flutter/material.dart';
import 'package:lab4/home/widgets/author_item.dart';
import 'package:lab4/style/lorem.dart';
import 'package:lab4/style/text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> giftList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 8, left: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello Billal', style: Styles.primaryText()),
              SizedBox(height: 8),
              Text(Lorem.loremText),
              SizedBox(height: 10),
              Text('Author List', style: Styles.primaryText()),
              SizedBox(height: 8),
              AuthorItem(author: 'Author-1', tittle: 'Tittle-1'),
              AuthorItem(author: 'Author-2', tittle: 'Tittle-2'),
              AuthorItem(author: 'Author-3', tittle: 'Tittle-3'),
              SizedBox(height: 10),

              Text('Gift List', style: Styles.primaryText()),
              SizedBox(height: 8),
          
              Column(
                children: giftList.map((gift) {
                  return ListTile(
                    title: Text(gift),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          giftList.remove(gift);
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
          
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        giftList.add('⦿ New Gift ${giftList.length + 1}');
                      });
                    },
                    child: Text('Add Gift'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      if (giftList.isNotEmpty) {
                        setState(() {
                          giftList.removeLast();
                        });
                      }
                    },
                    child: Text('Delete Last Gift'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
