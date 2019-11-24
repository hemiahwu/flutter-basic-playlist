import 'package:flutter/material.dart';
import 'datas.dart';
class DataCard extends StatelessWidget {

  Datas data;

  DataCard(this.data);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              data.text,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              data.author,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800]
              ),
            ),
          ],
        ),
      ),
    );
  }
}