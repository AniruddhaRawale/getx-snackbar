import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "SnackBar",
      home: Scaffold(
        appBar: AppBar(
          title: Text("SnackBar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                
                  child: Text("Show SnackBar",style: TextStyle(fontSize: 25),),
                  onPressed: () {
                    //to get snackbar
                    //snackbar is from top by default
                    Get.snackbar("SnackBar Title", "This is SnackBar",
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.black,
                        borderRadius: 30,
                        animationDuration: Duration(milliseconds: 1000),
                        margin: EdgeInsets.all(10),
                        //to use bordercolor border width is neccesary
                        // otherwise it will give an error
                        borderColor: Colors.black,
                        borderWidth: 4,
                        boxShadows: [
                          BoxShadow(
                            color: Colors.yellow,
                            //offset gives location where shadow will fall
                            // in terms of x and y respectively
                            offset: Offset(30, 50),
                            //radius where shadow will spread
                            spreadRadius: 20,
                            //radius where shadow will get blurred with the background
                            blurRadius: 8,
                          )
                        ],
                        //can be dismissed with a swipe
                        isDismissible: true,
                        //which direction to swap
                        dismissDirection: SnackDismissDirection.HORIZONTAL,
                        forwardAnimationCurve: Curves.bounceInOut,
                        //time for which snackbar will be available on screen
                        duration: Duration(milliseconds: 8000),
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        //to stop icon to animate with the snackbar
                        shouldIconPulse: false,
                        //shows a bar at the left side
                        leftBarIndicatorColor: Colors.white,
                        mainButton: FlatButton(
                          onPressed: () {},
                          child: Text("Retry"),
                          color: Colors.green,
                          textColor: Colors.white,
                        ),
                        //if you want to do something after taping on snackbar
                        onTap: (val) {
                      print("SnackBar Clicked");
                    },
                        //blur everything rest when snackbar is opened on screen
                        overlayBlur: 5,
                        //you can even change its color
                        overlayColor: Colors.green,
                        //we can give it padding as well
                        padding: EdgeInsets.all(50),
                        //to show progressbar indicator on top of snackbar
                        showProgressIndicator: true,
                        //to change its color
                        progressIndicatorBackgroundColor: Colors.orangeAccent,
                        //to change default color of blue in progress bar indicator

                        progressIndicatorValueColor:
                            AlwaysStoppedAnimation<Color>(Colors.black),

                        //animation when snackbar is hiding
                        reverseAnimationCurve: Curves.bounceInOut,

                        //to show the status whether its hiding or open
                        snackbarStatus: (val){
                      print(val);
                        },

                        //to use snackbar as input textfield
                        //this willl override other code of title etc
                        userInputForm: Form(
                          child: Row(
                            children: [
                              Expanded(child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Name",
                                  hintStyle: TextStyle(fontSize: 25)
                                ),
                              ))
                            ],
                          ),
                        ),

                        // maxWidth: 100,
                        backgroundGradient:
                            LinearGradient(colors: [Colors.red, Colors.pink]),
                        titleText: Text(
                          "Another Title",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        messageText: Text(
                          "Another Message",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
