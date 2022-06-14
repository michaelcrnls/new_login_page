import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  bool newValues = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/3.png',
          fit: BoxFit.cover,
          height: 50,
          width: 50,
        ),
        backgroundColor: Colors.white70,
        //Text('Login Page'),
      ),
      body: Center(
        child: Stack(children: [
          Container(
            constraints: const BoxConstraints(
              maxWidth: 600,
              maxHeight: 500,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/last.jpg"),
                fit: BoxFit.fill,
                opacity: 0.5,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 50, left: 100),
            constraints: BoxConstraints(
              maxWidth: 400,
              maxHeight: 400,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                    bottomLeft: Radius.circular(70)),
                color: Colors.white,
                border: Border.all(color: Colors.blueAccent)),
            child: SizedBox(
              width: 400,
              height: 400,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/3.png"))),
                      ),
                      Text('welcome onboard',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Let's sign you in.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.blueAccent)),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                        ),
                        hintText: 'first name',
                        labelText: 'Username',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(25))
                        /*border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amberAccent)
                  )*/
                        ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.blueAccent,
                        ),
                        hintText: 'one time password',
                        labelText: 'Password',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(25))),
                  ),
                   Wrap(
                     crossAxisAlignment: WrapCrossAlignment.center,
                     //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                          value: newValues,
                          onChanged: (value) {
                            setState(() {
                              newValues = false;
                            });
                          }
                      ),Text('Stay signed in', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      Checkbox(
                          value: newValues,
                          onChanged: (value) {
                            setState(() {
                              newValues = false;
                            });
                          }
                      ),
                      Text('Remember me', style: TextStyle(color: Colors.grey, fontSize: 10)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Login',
                            style: TextStyle(color: Colors.white)),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent))),
                  ),
                  Text(
                    'forgot password?',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont have an account yet?', style: TextStyle(color: Colors.grey, fontSize: 12),),
                        Text('Sign up', style: TextStyle(color: Colors.blueAccent, fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      /*bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home))
      ],backgroundColor: Colors.red, ),*/
    );
  }

  void setState(Null Function() param0) {}
}
