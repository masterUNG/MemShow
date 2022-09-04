// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:unginformation/states/create_account.dart';
import 'package:unginformation/utility/my_constant.dart';
import 'package:unginformation/widgets/show_button.dart';
import 'package:unginformation/widgets/show_form.dart';
import 'package:unginformation/widgets/show_image.dart';
import 'package:unginformation/widgets/show_text.dart';
import 'package:unginformation/widgets/show_text_button.dart';

class Authen extends StatelessWidget {
  const Authen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
          behavior: HitTestBehavior.opaque,
          child: Container(
            decoration: MyConstant().imageBox(),
            child: LayoutBuilder(builder: (context, constaint) {
              return Center(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: constaint.maxWidth,
                        height: constaint.maxHeight * 0.55,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        contentTop(),
                        formEmail(),
                        formPassword(),
                        buttonLogin(),
                        newCreateAccount(context: context)
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  Row newCreateAccount({required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ShowText(text: 'Non Account ? '),
        ShowTextButton(
          label: 'Create Account',
          pressFunc: () {
            print('You Click');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const CreateAccount();
                },
              ),
            );
          },
        ),
      ],
    );
  }

  ShowButton buttonLogin() {
    return ShowButton(
      label: 'Login',
      pressFunc: () {},
    );
  }

  ShowForm formPassword() {
    return ShowForm(
      changeFunc: (p0) {},
      obsecu: true,
      hint: 'Password:',
      iconData: Icons.lock_outline,
    );
  }

  ShowForm formEmail() {
    return ShowForm(
      changeFunc: (p0) {},
      hint: 'Email:',
      iconData: Icons.mail_outline,
    );
  }

  SizedBox contentTop() {
    return SizedBox(
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          textLogin(),
          imageLogo(),
        ],
      ),
    );
  }

  SizedBox imageLogo() {
    return const SizedBox(
      width: 48,
      child: ShowImage(),
    );
  }

  ShowText textLogin() {
    return ShowText(
      text: 'Login:',
      textStyle: MyConstant().h1Style(),
    );
  }
}
