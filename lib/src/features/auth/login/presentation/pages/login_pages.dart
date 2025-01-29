import 'package:chatting_app/src/commons/button.widget.dart';
import 'package:chatting_app/src/commons/text_form_field.widget.dart';
import 'package:chatting_app/src/config/theme/color.theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                        'https://cdni.iconscout.com/illustration/premium/thumb/login-illustration-download-in-svg-png-gif-file-formats--select-an-account-join-the-forum-password-digital-marketing-pack-business-illustrations-8333958.png'),
                    Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        color: AppColorTheme.blueColor900,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('Please Sign In to Continue'),
                    SizedBox(height: 15),
                    TextFormFieldWidgets(
                      labelText: 'Email',
                      backgroundColor: AppColorTheme.whiteColor100,
                      prefixIcon: FontAwesomeIcons.user,
                      borderColor: AppColorTheme.primary500,
                      // focusColor: Colors.blue.shade200,
                      enabledColor: Colors.grey.shade300,
                      hintText: 'Email',
                      borderRadius: 20,
                    ),
                    SizedBox(height: 15),
                    TextFormFieldWidgets(
                      labelText: 'Password',
                      backgroundColor: AppColorTheme.whiteColor100,
                      prefixIcon: FontAwesomeIcons.user,
                      isObsecure: true,
                      borderColor: AppColorTheme.redColor950,
                      enabledColor: Colors.grey.shade300,
                      hintText: 'Password',
                      borderRadius: 20,
                    ),
                    SizedBox(height: 10),
                    Text('Lupa Password?'),
                    SizedBox(height: 15),
                    ButtonWidget(
                      title: 'Login',
                      borderRadius: 20,
                      backgroundColor: AppColorTheme.blueColor900,
                      onPressed: () {},
                    ),
                    Row(children: [
                      Text('Belum memiliki Akun?'),
                      TextButton(
                        onPressed: () {},
                        child: Text('Daftar'),
                      )
                    ]),
                    Center(child: Text('Atau Masuk dengan')),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Image.network(
                            'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                            width: 80,
                            height: 80,
                            // fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
