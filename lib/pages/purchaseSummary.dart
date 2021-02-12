import 'package:flutter/material.dart';

class PurchaseSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              backgroundColor: Color(0xFF00897B),
        title: Row(
          children: [
            Text(
              'Purchase Summary',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: Column(children: [
        SizedBox(height: 10),
        Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 15, bottom: 15),
            child: Text('PRODUCT LISTS',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(right: 253),
          child: Text('Honey',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xFF00897B)))),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text('2.0x13664.0',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text('27328',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 200),
        Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text('TOTAL:',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text('28328/=',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ])),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            width: 300,
            height: 50.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                'SAVE',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
              ),
              color: Color(0xFF00897B),
              onPressed: () {},
            ),
          ),
        ),
      ]),
    );
  }
}
