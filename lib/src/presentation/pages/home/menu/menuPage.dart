import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/src/presentation/pages/home/menu/settings/changePassword/changePasswordPage.dart';

import 'accountPage/accountPage.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pop(LoginPage());
                    },
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profil.png"),
                        //   backgroundColor: Colors.deepPurple,
                        maxRadius: 25,
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          color: Colors.tealAccent.withOpacity(.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                        )
                      ]),
                  child: ListTile(
                    title: const Text('Account'),
                    leading: Icon(CupertinoIcons.person),
                    trailing: Icon(Icons.arrow_forward, color: Colors.grey),
                    textColor: Colors.black,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (
                        context,
                      ) =>
                              AccountPage()));
                    },
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          color: Colors.tealAccent.withOpacity(.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                        )
                      ]),
                  child: ListTile(
                    title: const Text('Settings'),
                    leading: Icon(CupertinoIcons.lock),
                    trailing: Icon(Icons.arrow_forward, color: Colors.grey),
                    textColor: Colors.black,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (
                        context,
                      ) =>
                              ChangePasswordPage()));
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          color: Colors.tealAccent.withOpacity(.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                        )
                      ]),
                  child: ListTile(
                    title: const Text('Settings'),
                    leading: Icon(CupertinoIcons.lock),
                    trailing: Icon(Icons.arrow_forward, color: Colors.grey),
                    textColor: Colors.black,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          color: Colors.tealAccent.withOpacity(.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                        )
                      ]),
                  child: ListTile(
                    title: const Text('Settings'),
                    leading: Icon(CupertinoIcons.lock),
                    trailing: Icon(Icons.arrow_forward, color: Colors.grey),
                    textColor: Colors.black,
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          color: Colors.tealAccent.withOpacity(.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                        )
                      ]),
                  child: ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Se deconnecter'),
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LoginPage()));
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
