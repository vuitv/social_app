import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../widgets/button.dart';

import '../../widgets/card_form.dart';
import 'widget/form_background.dart';
import 'widget/input_field.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = '/register';
  static final route = GetPage(name: routeName, page: () => RegisterScreen());

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBody: true,
          appBar: AppBar(leading: CustomBackButton()),
          body: Stack(alignment: Alignment.center, children: [
            Align(
              alignment: Alignment.topCenter,
              child: FormBackground(title: 'Create account'),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: SingleChildScrollView(
                  child: CardForm.button(
                    children: [
                      InputField(
                        label: 'Name',
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter your name',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      InputField(
                        label: 'Email',
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter your email address',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      InputField(
                        label: 'Password',
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Choose a password  ',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      InputField(
                        label: 'Password',
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Repeat password',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                    ],
                    button: CustomButton(onPressed: () => null, label: Text('SIGN UP')),
                  ),
                ),
              ),
            ),
          ]),
        ),
      );
}
