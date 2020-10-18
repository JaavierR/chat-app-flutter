import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;

  const MessageBubble({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(20),
          ),
          width: 140,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Text(
            message,
            style: TextStyle(
              color: Theme.of(context).accentTextTheme.headline6.color,
            ),
          ),
        ),
      ],
    );
  }
}
