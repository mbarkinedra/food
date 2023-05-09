import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/src/presentation/widgets/customButton.dart';

import '../../../../widgets/customB.dart';
import '../../../../widgets/customInputAuth.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Center(
            child: const Text(
              "Account",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),

            ),

          ),
        ),

        body:SingleChildScrollView(


            child: Column(
              children: [
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Update your account",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.yellowAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                CustomInput(

                  hint: "Name",

                  //   validator: controller.validator.validateEmail,
                  // textEditingController: controller.emailController,
                ),
                SizedBox(
                  height: 18,
                ),
                CustomInput(
                  hint: "Afef",
                  //   validator: controller.validator.validateEmail,
                  // textEditingController: controller.emailController,
                ),

                SizedBox(
                  height: 18,
                ),
                CustomInput(
                  hint: "Afef",
                  //   validator: controller.validator.validateEmail,
                  // textEditingController: controller.emailController,
                ),
                SizedBox(
                  height: 18,
                ),
                CustomInput(

                  hint: "98112314",
                  //   validator: controller.validator.validateEmail,
                  // textEditingController: controller.emailController,
                ),
                SizedBox(
                  height: 18,
                ),
                // CustomInputLogin(
                //   color: Colors.white,
                //   icon: Icons.email,
                //   hint: "afef@gmail.com",
                //   hight: 60,
                //
                //   //   validator: controller.validator.validateEmail,
                //   // textEditingController: controller.emailController,
                // ),
                // SizedBox(
                //   height: 18,
                // ),
                // // GetBuilder<LoginController>(builder: (logic) {
                // CustomInputLogin(
                //   color: Colors.white,
                //   icon: Icons.home,
                //   hint: "kasserine ",
                //   hight: 60,
                //   //  obscureText: logic.isVisiblePassword,
                //   //    validator: controller.validator.validatePassword,
                //   // textEditingController: controller.passwordController,
                //   //  suffixIcon: IconButton(
                //   //    onPressed: logic.showHidePassword,
                //   //    icon: Icon(
                //   //      color: Colors.white,
                //   //    //  logic.isVisiblePassword
                //   //          ? Icons.visibility_off
                //   //          : Icons.visibility,
                //   //    ),
                //   //  ),
                // ),
                // SizedBox(
                //   height: 18,
                // ),



                Center(
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

              ],
            )

        )





    );
  }
}