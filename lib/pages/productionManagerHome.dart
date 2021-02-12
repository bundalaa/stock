import 'package:flutter/material.dart';
import 'package:stock/constants/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xFF00897B),
              title:  Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'PRODUCTION',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  Tab(
                    text: 'PENDING',
                  ),
                  Tab(
                    text: 'PROCESSING',
                  ),
                ],
              )),
          body: TabBarView(
            children: [
              ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, top: 5, right: 5),
                    child: Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF00897B),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/image/zoazoa.png')
                              // ),
                              ),
                        ),
                        title: Text(
                          'ZOAZOA LOTION',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              '20 mins',
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        trailing: Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            // child: Text(
                            //   '20 mins',
                            //   style: TextStyle(fontSize: 7, color: Colors.black),
                            // ),
                            // child: IconButton(onPressed: () {  }, icon: Icon(Icons.more_horiz),),
                            child: Container(
                                height: 17,
                                width: 17,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, prdManagerfirstScreen);
                                  },
                                  child: Image(
                                      image: AssetImage(
                                          'assets/image/download.png')),
                                ))),
                      ),
                    ),
                  );
                },
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
              ),
             
                  ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 5, top: 5, right: 5),
                        child: Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF00897B),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/image/zoazoa.png')
                                  // ),
                                  ),
                            ),
                            title: Text(
                              'ZOAZOA LOTION',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                           subtitle: Row(
                          children: [
                            Text(
                              'Status: Completed',
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.black,
                              ),
                            ),
                           
                          ],
                        ),
                            trailing: Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            // child: Text(
                            //   '20 mins',
                            //   style: TextStyle(fontSize: 7, color: Colors.black),
                            // ),
                            // child: IconButton(onPressed: () {  }, icon: Icon(Icons.more_horiz),),
                            child: Container(
                                height: 17,
                                width: 17,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, storeKeeperHome);
                                  },
                                  child: Image(
                                      image: AssetImage(
                                          'assets/image/note.png')),
                                ))),
                          ),
                        ),
                      );
                    },
                    itemCount: 5,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                  ),
                
            ],
          ),
        ));
  }

  

}
