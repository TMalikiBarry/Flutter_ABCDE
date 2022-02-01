import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  QuoteCard({ required this.quote, required this.delete });
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey[600],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox( height: 7.5),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[800],
                letterSpacing: 2.5,
              ),
            ),
            SizedBox( height: 8.0),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('delete quote'),
            )
          ],
        ),
      ),
    );
  }
}