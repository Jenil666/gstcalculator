import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  int gst = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
                child: TextField(
                 decoration: InputDecoration(
                   filled: true,
                   fillColor: Colors.grey.shade100,
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.grey.shade100,width: 2)
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.grey.shade300,width: 5),
                   )
                 ),
                )),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 110,
              width: double.infinity,
              color: Colors.grey.shade100,
              child: Column(
                children: [
                  Center(
                    child: Text("GST",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                    ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15,top: 30),
                        height: 50,
                        width: 90,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                gst = 3;
                              });
                            },
                            child: Text(
                              "3%",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5,top: 30),
                        height: 50,
                        width: 90,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                gst = 5;
                              });
                            },
                            child: Text(
                              "5%",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5,top: 30),
                        height: 50,
                        width: 90,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                gst = 12;
                              });
                            },
                            child: Text(
                              "12%",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5,top: 30),
                        height: 50,
                        width: 90,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                gst = 18;
                              });
                            },
                            child: Text(
                              "18%",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5,top: 30),
                        height: 50,
                        width: 90,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                gst = 28;
                              });
                            },
                            child: Text(
                              "28%",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 90,
              width: 250,
              child: Center(child: Text("CGST/SGST\n         25",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
              )),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: 300,
                  width: 250,
                  color: Colors.red,
                ),
                SizedBox(width: 15,),
                Container(
                  margin: EdgeInsets.only(left: 50,bottom: 70),
                  width: 80,
                  height: 225,
                  color: Colors.red,
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
