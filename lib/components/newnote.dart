import 'package:flutter/material.dart';

class NewNote extends StatelessWidget {
  const NewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            splashRadius: 17,
            onPressed: () {},
            icon: Icon(Icons.push_pin_outlined),
          ),
          IconButton(
            splashRadius: 10,
            onPressed: () {},
            icon: Icon(Icons.alarm),
          ),
          IconButton(
            splashRadius: 17,
            onPressed: () {},
            icon: Icon(Icons.archive),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Title",
                  hintStyle: TextStyle(fontSize: 22),
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: const TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 2,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Note",
                    hintStyle: TextStyle(fontSize: 22),
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
