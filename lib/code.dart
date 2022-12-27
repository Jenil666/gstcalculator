import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  int gst = 0,amount=0;
  TextEditingController value = TextEditingController();
  String v1="";
  double ans=0;
  double tax=0;
  String c="";
  var c1 = Colors.grey.shade300;
  var c2 =Colors.grey.shade300;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
                child: InkWell(
                  child: TextField(
                    controller: value,
                    cursorColor: Colors.grey.shade400,
                   decoration: InputDecoration(
                     hintText: "ORIGINAL PRICE",
                     filled: true,
                     fillColor: Colors.grey.shade300,
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.grey.shade100,width: 2)
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.grey.shade600,width: 5),
                     )
                   ),
                  ),
                ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 110,
              width: double.infinity,
              color: Colors.grey.shade300,
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
                        color: c1,
                        height: 50,
                        width: 90,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                              c1 = Colors.red;
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
                        color: c2,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                c2 = Colors.red;
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
              height: 60,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    height: 50,
                    width: 100,
                    child: Center(
                      child: Text(
                        "Final Price",
                        style: TextStyle(
                            fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 250),
                    height: 50,
                    width: 110,
                    child: Center(
                      child: Text(
                        "$ans Rs",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50),
                  height: 90,
                  width: 200,
                  child: Center(child: Text("CGST/SGST\n         25",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  height: 90,
                  width: 200,
                  child: Center(child: InkWell(
                    onTap: (){
                      setState(() {
                        v1=value.text;
                        amount=int.parse(v1);
                        tax = amount*(gst/100);
                        ans=amount+tax;
                      });
                    },
                    child: Text("Calculate",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 469,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 155),
                    height: 479,
                    width: 400,
                   // alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 400,
                          child: RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "  7          ",
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.black
                                      )
                                  ),
                                  TextSpan(
                                      text: "8            ",
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.black
                                      )
                                  ),
                                  TextSpan(
                                      text: "9",
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.black
                                      )
                                  ),
                                ]
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 100,
                          width: 400,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "  4          ",
                                  style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.black
                                  )
                                ),
                                TextSpan(
                                  text: "5            ",
                                  style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.black
                                  )
                                ),
                                TextSpan(
                                  text: "6",
                                  style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.black
                                  )
                                ),
                              ]
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 100,
                          width: 400,
                          child: RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "  1          ",
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.black
                                      )
                                  ),
                                  TextSpan(
                                      text: "2            ",
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.black
                                      )
                                  ),
                                  TextSpan(
                                      text: "3",
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.black
                                      )
                                  ),
                                ]
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 100,
                          width: 400,
                          child: RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "  00          ",
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.black
                                      )
                                  ),
                                  TextSpan(
                                      text: "0            ",
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.black
                                      )
                                  ),
                                  TextSpan(
                                      text: ".",
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.black
                                      )
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 17.5),
                        height: 229.5,
                        width: 120,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                ans=0;
                               value.text="";
                              });
                            },
                            child: Text("AC",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(65),
                            topLeft: Radius.circular(65),
                            bottomLeft: Radius.circular(65),
                            bottomRight: Radius.circular(65)
                          )
                        ),
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                        onTap: (){
                          setState(() {
                            List<String> c = v1.split(""); // ['a', 'a', 'a', 'b', 'c', 'd']
                            c.removeLast();
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 17.5,),
                          height: 219.5,
                          width: 120,
                          child: Icon(Icons.delete_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(65),
                                  topLeft: Radius.circular(65),
                                  bottomLeft: Radius.circular(65),
                                  bottomRight: Radius.circular(65)
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
