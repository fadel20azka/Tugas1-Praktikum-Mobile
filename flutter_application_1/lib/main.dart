import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          'Login Page',
          style: TextStyle(fontWeight: FontWeight.bold),
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
            const Text(
              'Login',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
                            borderRadius: BorderRadius.circular(28)),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Please enter your email'
                            : null;
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
                            borderRadius: BorderRadius.circular(28)),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Please enter your email'
                            : null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black12,
                      minimumSize: Size(450, 40),
                      maximumSize: Size(800, 40),
                      textStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    ));
  }
}
