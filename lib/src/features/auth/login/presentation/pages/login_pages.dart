import 'package:chatting_app/src/commons/button.widget.dart';
import 'package:chatting_app/src/commons/text_form_field.widget.dart';
import 'package:chatting_app/src/config/theme/color.theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

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
                      'https://cdni.iconscout.com/illustration/premium/thumb/mobile-chatting-app-illustration-download-in-svg-png-gif-file-formats--smartphone-communication-messages-business-activities-pack-people-illustrations-4617901.png',
                    ),
                    Text(
                      'Welcome Back',
                      style: GoogleFonts.poppins(
                        color: AppColorTheme.blueColor900,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('Please Sign In to Continue'),
                    SizedBox(height: 15),
                    TextFormFieldWidgets(
                      labelText: 'Email',
                      backgroundColor: AppColorTheme.whiteColor100,
                      prefixIcon: Iconsax.user,
                      borderColor: AppColorTheme.primary500,
                      // focusColor: Colors.blue.shade200,
                      enabledColor: Colors.grey.shade300,
                      hintText: 'Input your email',
                      borderRadius: 20,
                    ),
                    SizedBox(height: 15),
                    TextFormFieldWidgets(
                      labelText: 'Password',
                      backgroundColor: AppColorTheme.whiteColor100,
                      prefixIcon: Iconsax.key,
                      isObsecure: true,
                      borderColor: AppColorTheme.redColor950,
                      enabledColor: Colors.grey.shade300,
                      hintText: 'Input your password',
                      borderRadius: 20,
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('Forgot Password?'),
                    ),
                    SizedBox(height: 15),
                    ButtonWidget(
                      title: 'Login',
                      borderRadius: 20,
                      backgroundColor: AppColorTheme.blueColor900,
                      onPressed: () {},
                    ),
                    Row(children: [
                      Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {},
                        child: Text('Signup'),
                      )
                    ]),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey[350],
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('Or Sign in with', style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey[350],
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
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
