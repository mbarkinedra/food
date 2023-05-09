import 'package:flutter/material.dart';

import '../../../../../widgets/customB.dart';
import '../../../../../widgets/customButton.dart';
import '../../../../../widgets/customChangePassword.dart';



class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: AppColor.grayText,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text("Security",
                        style: TextStyle(color: Colors.black, fontSize: 23)),
                    Spacer(),
                  ],
                )),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Change your password",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

        CustomChangePassword(

              hint: "**********",
              //obscureText: logic.isVisiblePassword1,
              // textEditingController: controller.oldPassword,
              suffixIcon: IconButton(
                onPressed: (){},
                icon: Icon(
                  //logic.isVisiblePassword1
                    Icons.visibility_off
                  // : Icons.visibility,
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
        CustomChangePassword(
           //   label: "Nouveau mot de passe",
              hint: "********",
              //obscureText: logic.isVisiblePassword1,
              // textEditingController: controller.oldPassword,
              suffixIcon: IconButton(
                onPressed: (){},
                icon: Icon(
                  //logic.isVisiblePassword1
                    Icons.visibility_off
                  // : Icons.visibility,
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
        CustomChangePassword(
              hint: "*********",
              //obscureText: logic.isVisiblePassword1,
              // textEditingController: controller.oldPassword,
              suffixIcon: IconButton(
                onPressed: (){},
                icon: Icon(
                  //logic.isVisiblePassword1
                    Icons.visibility_off
                  // : Icons.visibility,
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child:
                    CustomButton(
                text: 'continue',
                color: Colors.deepOrangeAccent,
                width: MediaQuery.of(context).size.width * .8,
                hight: 50,
                onClick: () {
                  // controller.resetPassword();
                  // Get.offAll(LoginPage());
                },
              ),

              ),
              ),



          ],
        ),
      ),
    );
  }
}