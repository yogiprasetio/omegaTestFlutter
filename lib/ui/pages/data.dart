part of 'pages.dart';

class DataList extends StatefulWidget {
  DataList({Key? key}) : super(key: key);

  @override
  State<DataList> createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  List _get = [];

  final _lightColors = [
            mainColor,
            thirdColor,
            secondaryColor,
            Colors.pinkAccent.shade100,
          ];

  @override
  void initState(){
    super.initState();
    _getData();
  }

  Future _getData() async {
    try{
      final response = await http.get(Uri.parse(
        "http://172.20.10.5/flutter/list.php"
      ));
      if (response.statusCode == 200){
        final data = jsonDecode(response.body);
        setState(() {
          _get = data;
        });
      }
    } catch (e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: 
            Colors.orange.shade200,
      body: _get.length != 0
                  //we use masonry grid to make masonry card style
                  ? MasonryGridView.count(
                      crossAxisCount: 2,
                      itemCount: _get.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       //routing into edit page
                          //       //we pass the id note
                          //       MaterialPageRoute(builder: (context) => Edit(id: _get[index]['id'],)));
                          // },
                          child: Card(
                            //make random color to eveery card
                            color: _lightColors[index % _lightColors.length],
                            child: Container(
                              //make 2 different height
                              constraints:
                                  BoxConstraints(minHeight: (index % 2 + 1) * 85),
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${_get[index]['userid']}',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '${_get[index]['nama']}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    '${_get[index]['status']}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        "No Data Available",
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: mainColor,
                child: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                      context,
                      //routing into home page
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
     );
  }
}