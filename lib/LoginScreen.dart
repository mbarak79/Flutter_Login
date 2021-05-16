import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                SizedBox(height: 40.0,),
                TextFormField(
                  controller: EmailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  controller: PasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30.0,),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                      onPressed: (){
                        print(EmailController.text);
                        print(PasswordController.text);

                      },
                      child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                          ),
                      ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text('Register Now')),
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
