import 'package:flutter/material.dart';
import 'login_page.dart';
void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: LoginPage(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency app',
          style: TextStyle(
            fontFamily: 'MotionPicturePersonalUse',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body:Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Enter Email:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'MotionPicturePersonalUse',
                  ),

                ),
                new Flexible(child:
                TextField(

                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email ex: example@exm.com',
                      prefixIcon: Icon(Icons.mail_outline)
                  ),
                ),)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Enter Password:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'MotionPicturePersonalUse',
                  ),

                ),
                new Flexible(child:
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline),
                  ),
                ),)
              ],
            ),
          ),
          MaterialButton(onPressed: () => {

          },
            child: Text('Login',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 23.0,
            ),),
            color: Colors.blue,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

