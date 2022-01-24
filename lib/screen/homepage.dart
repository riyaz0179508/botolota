
import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webview_botolota/screen/web.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {


  @override

  Widget build(BuildContext context) {
    return 
      SafeArea(
        child: Scaffold(

        body: Column(
          children: [

            SizedBox(
              height:70,
            ),
            Container(
              child: Image.asset("assets/images/img.png"),
              height:600,
              width: MediaQuery.of(context).size.width,
            ),

            InkWell(
              onTap: ()async{
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWebView()));
                var connectionResult = await (Connectivity().checkConnectivity());
                if(connectionResult==ConnectivityResult.none){
                  Fluttertoast.showToast(msg: "No Internet Connection");
                }
              },
              child:
              Padding(
                padding: const EdgeInsets.all(15),
                child:
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 60,
                  width: MediaQuery.of(context).size.width,

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Next", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                          fontSize: 22),),
                      SizedBox(
                        width: 5,
                      ),

                      Icon(Icons.arrow_forward, color: Colors.white,),
                    ],
                  ),

                ),
              ),
            )
          ],
        )

    ),
      );
  }
}
