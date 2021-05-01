import 'package:blackmedia/Role/User/Home_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ));

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  dynamic _login() async {
    Get.to(HomeUser());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Login your Account',
            style: TextStyle(
                fontSize: 22, letterSpacing: 0.7, fontWeight: FontWeight.w600),
          )),
          SizedBox(
            height: 50,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                EmailInput(emailController: _emailController),
                SizedBox(
                  height: 10,
                ),
                PasswordInput(passwordController: _passwordController),
                SizedBox(
                  height: 30,
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _login();
                          }
                        },
                        child: Text('Login')))
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                  onPressed: () {}, child: FaIcon(FontAwesomeIcons.github)),
              FlatButton(
                  onPressed: () {}, child: FaIcon(FontAwesomeIcons.google)),
            ],
          ),
        ],
      )),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key,
    @required TextEditingController passwordController,
  })  : _passwordController = passwordController,
        super(key: key);

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      child: TextFormField(
        obscureText: true,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Your Password';
          } else {
            return null;
          }
        },
        controller: _passwordController,
        decoration: InputDecoration(
          hintText: 'Your Password',
        ),
      ),
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key key,
    @required TextEditingController emailController,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Your Email Please';
          } else {
            return null;
          }
        },
        controller: _emailController,
        decoration: InputDecoration(
          hintText: 'Your Email',
        ),
      ),
    );
  }
}
