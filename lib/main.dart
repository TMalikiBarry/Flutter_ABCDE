import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Quote> quotes = [
    Quote( author: 'Maliki Barry', text: 'Come take your monday motivation dose'),
    Quote( author: 'Osca Wilde', text: 'Be yourself, everyone else is already taken'),
    Quote( author: 'Abdou Ndao', text: 'She has a very beautiful voice'),
    Quote( author: 'Random', text: 'You are what you eat'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Style de ID Card'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quotes.map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }
            )).toList(),
          ),
        ),
      ),
    );
  }
}







