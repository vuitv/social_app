import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/themes.dart';
import '../../widgets/button.dart';
import '../../widgets/card_form.dart';
import '../../widgets/circle_avatar.dart';
import '../auth/widget/input_field.dart';

class CreatePostScreen extends StatelessWidget {
  static const routeName = '/createPost';
  static final route = GetPage(name: routeName, page: CreatePostScreen.new);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            leading: CustomBackButton(),
            actions: [CircleAvatarCustom()],
            toolbarHeight: kToolbarHeight + 16,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Text('Create post', style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.all(const Radius.circular(6)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(74, 144, 226, 0.1),
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        blurRadius: 11,
                        offset: Offset(0, 5),
                      )
                    ],
                  ),
                  child: TextFormField(
                    minLines: 4,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'What’s on your mind?',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor.withOpacity(0.9),
                    borderRadius: BorderRadius.all(const Radius.circular(6)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        blurRadius: 20,
                        offset: Offset(0, 20),
                      )
                    ],
                  ),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text(
                        'Add Photo / Video',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w300),
                      ),
                      Center(
                          child: const Icon(
                        Icons.camera_alt,
                        size: 160,
                        color: Themes.lightGrayishBlue,
                      ))
                    ]),
                  ),
                ),
                const SizedBox(height: 30),
                CardForm(paddingHorizontal: 0, children: [
                  InputField(
                    label: 'Tag Friends',
                    labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w300),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your friends name',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Divider(),
                  const SizedBox(height: 20),
                  InputField(
                    label: 'Check in',
                    labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w300),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your location',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: 10),
                CustomButton(
                  width: MediaQuery.of(context).size.width * 0.78,
                  label: Text('SHARE'),
                  onPressed: () => null,
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      );
}
