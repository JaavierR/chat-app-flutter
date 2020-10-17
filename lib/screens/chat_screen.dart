import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        // This is a live listener to our connection, so whenever we
        // add a new document in the real database, the app print in
        // the console the new entry. (nice start)
        stream: Firestore.instance
            .collection('chats/bwtwO93loRdDEPDGA3lI/messages')
            .snapshots(),
        builder: (context, streamSnapshot) {
          // The condition below handles the milisecond to reach the db, i.e.,
          // when we don't have data yet.
          if (streamSnapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          final documents = streamSnapshot.data.documents;
          return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(documents[index]['text']),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Firestore.instance
              .collection('chats/bwtwO93loRdDEPDGA3lI/messages')
              .add({'text': 'This was added by clicking the button!'});
        },
      ),
    );
  }
}
