import 'package:flutter/material.dart';
import 'package:unginformation/utility/my_constant.dart';
import 'package:unginformation/widgets/show_button.dart';
import 'package:unginformation/widgets/show_form.dart';
import 'package:unginformation/widgets/show_icon_button.dart';
import 'package:unginformation/widgets/show_image.dart';
import 'package:unginformation/widgets/show_text.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: ShowText(
          text: 'Create New Account',
          textStyle: MyConstant().h2Style(),
        ),
      ),
      body: ListView(
        children: [
          newAvatar(),
          formName(),
          formEmail(),
          formPassword(),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShowButton(
                label: 'Create New Account',
                pressFunc: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Row formPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowForm(
          hint: 'Password',
          iconData: Icons.lock_outline,
          changeFunc: (p0) {},
        ),
      ],
    );
  }

  Row formEmail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowForm(
          hint: 'Email:',
          iconData: Icons.email_outlined,
          changeFunc: (p0) {},
        ),
      ],
    );
  }

  Row formName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowForm(
          hint: 'Name:',
          iconData: Icons.fingerprint,
          changeFunc: (p0) {},
        ),
      ],
    );
  }

  Row newAvatar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 250,
          height: 250,
          child: Stack(
            children: [
              ShowImage(
                path: 'images/avatar.png',
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: ShowIconButton(
                  iconData: Icons.add_a_photo,
                  pressFunc: () {},
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
