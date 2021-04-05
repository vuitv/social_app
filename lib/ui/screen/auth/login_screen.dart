import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../widgets/button.dart';
import '../../widgets/card_form.dart';
import 'register_screen.dart';
import 'widget/form_background.dart';
import 'widget/input_field.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  static final route = GetPage(name: routeName, page: () => LoginScreen());

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBody: true,
          appBar: AppBar(
            leading: CustomBackButton(),
          ),
          body: Stack(alignment: Alignment.center, children: [
            Align(
              alignment: Alignment.topCenter,
              child: FormBackground(title: 'Welcome back'),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: SingleChildScrollView(
                  child: CardForm.button(
                    children: [
                      InputField(
                        label: 'Email or Username',
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter email address',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      InputField(
                        label: 'Password',
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter password',
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              suffixIcon: TextButton(
                                onPressed: () => null,
                                child: Text('FORGOT?', style: TextStyle(fontSize: 12)),
                              )),
                        ),
                      ),
                    ],
                    button: CustomButton(onPressed: () => null, label: Text('LOGIN')),
                  ),
                ),
              ),
            ),
          ]),
          bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(
              'Dont\' have an account yet?',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            TextButton(
              child: Text('SIGN UP NOW'),
              onPressed: () => Get.toNamed(RegisterScreen.routeName),
              style: TextButton.styleFrom(
                primary: Theme.of(context).textTheme.bodyText1?.color,
                minimumSize: Size(88, 26),
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
            const SizedBox(height: 80),
          ]),
        ),
      );
}
