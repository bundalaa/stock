import 'package:flutter/material.dart';

class PrdManagerFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 170),
            child: AppBar(
              leading: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: IconButton(
                  iconSize: 20,
                  color: Colors.white,
                  icon: Icon(
                    Icons.arrow_back_ios,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              backgroundColor: Color(0xFF00897B),
              flexibleSpace: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text("PRODUCT DETAILS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 15),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text("Product Name",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, right: 60),
                                  child: Text("Zoazoa Lotion",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ))),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text("Product Quantity",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text("2000 kg",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      )),
                                ))),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 250),
                        //   child: Container(
                        //       // alignment:Alignment.centerRight,
                        //       child: Column(children: [
                        //     Text("more",
                        //         style: TextStyle(
                        //           color: Colors.white,
                        //           fontSize: 12,
                        //         )),
                        //     Text("details",
                        //         style: TextStyle(
                        //           color: Colors.white,
                        //           fontSize: 12,
                        //         ))
                        //   ])),
                        // )
                      ])),
            )),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5, top: 5, right: 5),
              child: Container(
                height: 48,
                width: 100,
                decoration: BoxDecoration(
                  border: Border(
                    // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
                    bottom: BorderSide(width: 2.0, color: Color(0xFF00897B)),
                  ),
                  color: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    'Honey',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          '30000 mls ................................................ 30000/=',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: 4,
          separatorBuilder: (BuildContext context, int index) => Divider(),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          color: Color(0xFF00897B),
          child: FlatButton(
            onPressed: () {},
            child: Text(
              'START PROCESS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ))
        );
  }
}
