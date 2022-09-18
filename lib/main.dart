import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF54C5F8),
          title: const Text(
              'Login Page',
            style: TextStyle(
              fontWeight: FontWeight.bold

            ),
          ),

        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {},
          ),
        ],
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image.network(
                'https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png',
                width: 30,
                height: 70,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter Email',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28)
                            ),
                           ),
                            onChanged: (String value){

                            },
                              validator: (value) {
                                return value!.isEmpty ? 'Please enter your email' : null;
                              },
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter password',
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28)
                              ),

                            ),
                            onChanged: (String value){
                            },
                            validator: (value) {
                              return value!.isEmpty ? 'Please enter your email' : null;
                            },
                            
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                    ElevatedButton(
                        onPressed: (){},
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(

                          primary: Color(0xFF01579B),
                          minimumSize: Size(320, 40),
                          maximumSize: Size(500, 40),

                          textStyle: TextStyle(
                            fontSize: 20,
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: (){},
                            child: Text ('Forgot Password'),
                          style: ButtonStyle(
                            foregroundColor:  MaterialStateProperty.all(Colors.grey),
                          ),
                        ),
                      ],

                    )

                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

