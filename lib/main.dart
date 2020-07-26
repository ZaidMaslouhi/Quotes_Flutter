import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';

void main() => runApp(MaterialApp(
      home: QuotesList(),
    ));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => new _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself; everyone else is already taken.',
        author: 'Oscar Wilde'),
    Quote(text: 'So many books, so little time.', author: 'Frank Zappa'),
    Quote(
        text: 'Be the change that you wish to see in the world.',
        author: 'Mahatma Gandhi'),
    Quote(
        text: 'Be yourself; everyone else is already taken.',
        author: 'Oscar Wilde'),
    Quote(text: 'So many books, so little time.', author: 'Frank Zappa'),
    Quote(
        text: 'Be the change that you wish to see in the world.',
        author: 'Mahatma Gandhi'),
    Quote(
        text: 'Be yourself; everyone else is already taken.',
        author: 'Oscar Wilde'),
    Quote(text: 'So many books, so little time.', author: 'Frank Zappa'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text("Awesome Quotes"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () => setState(() => quotes.remove(quote))))
              .toList(),
        ),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
      ),
    );
  }
}
