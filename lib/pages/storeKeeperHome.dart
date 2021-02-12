import 'package:flutter/material.dart';
import 'package:stock/constants/constants.dart';

class StoreHomePage extends StatefulWidget {
  @override
  _StoreHomePageState createState() => _StoreHomePageState();
}

class _StoreHomePageState extends State<StoreHomePage> {
  TextEditingController _textController = TextEditingController();
  int _n = 0;
  int selectedRadio;

  //fn to increase number size
  void add() {
    setState(() {
      _n++;
    });
  }

//fn to decrease number size
  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  static List<String> mainDataList = [
    "acid benzic",
    "cucumber",
    "garic",
    "honey",
    "lemon",
    "pure water"
  ];

  // Copy Main List into New List.
  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Color(0xFF00897B),
                title: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'STORE',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  tabs: <Widget>[
                    Tab(
                      text: 'PRODUCTS',
                    ),
                    Tab(
                      text: 'RAW MATERIALS',
                    ),
                  ],
                )),
            body: TabBarView(children: [
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
                        leading: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, storeKeeperFirstScreen);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 13),
                            child: CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/image/zoazoa.png')
                                // ),
                                ),
                          ),
                        ),
                        title: Text(
                          'ZOAZOA LOTION',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'QTY: 2000',
                          style: TextStyle(
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: onItemChanged,
                        controller: _textController,
                        decoration: InputDecoration(
                            labelText: "Search",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.only(bottom: 5),
                        children: newDataList.map((data) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFF00897B),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: ListTile(
                                title: Text(data),
                                onTap: () => alertDialog(context),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Divider()
                  ],
                ),
              )
            ]),
                    bottomNavigationBar: BottomAppBar(
            child: Container(
          color: Color(0xFF00897B),
          child: FlatButton(
            onPressed: () {
               Navigator.pushNamed(
                                        context, purchaseSummary);
            }, child: Icon(Icons.arrow_forward_ios,size:30,color:Colors.white),
            // child: Text(
            //   'START PROCESS',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 20,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ),
        ))
            )
            );
  }

  alertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return Column(mainAxisSize: MainAxisSize.min, children: [
                Text('Honey',style: TextStyle(),),
                SizedBox(height:10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.red,
                        ),
                        height: 40,
                        width: 60,
                        child: new FlatButton(
                          onPressed: () {
                            setState(() {
                              if (_n != 0) _n--;
                            });
                          },
                          child: new Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      new Text('$_n.0',
                          style: new TextStyle(
                              fontSize: 40.0, color: Colors.grey)),
                      Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.green,
                        ),
                        child: new FlatButton(
                          onPressed: () {
                            setState(() {
                              _n++;
                            });
                          },
                          child: new Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ]),
                    SizedBox(height:30),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.red,
                        ),
                        child: FlatButton(
                          child: new Text(
                            "CANCEL",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 40,
                          width: 90,
                           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.green,
                        ),
                          child: FlatButton(
                            child: new Text(
                              "SAVE",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]);
             
            }),
          );
        });
  }
}
