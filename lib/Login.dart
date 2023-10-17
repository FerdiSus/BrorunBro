import 'package:brorun/homepage.dart';
import 'package:brorun/regis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   final String username = "ferdi";
  final String password = "123";
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
      padding: EdgeInsets.all(16.0),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/logo.png"),
           width: 300,
           height: 150,
          ),
          SizedBox(height: 50),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(),
              ),
              prefixIcon: Icon(Icons.person),
              hintText: "Masukan Username",
            ),
          ),
          SizedBox(height: 16,),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(),
              ),
              prefixIcon: Icon(Icons.lock),
              hintText: "Masukan Password",
            ),
          ),
          SizedBox(height: 24.0),
          Container(
            width: 500,
            height: 45,
            child: 
            ElevatedButton(
              onPressed: (){
                if(_emailController.text == username && _passwordController.text == password){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Homepage() ));
                }
                else
                {
                   ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Akun tidak diketahui')),
                    );
                }
              },
              child: Text("Login"),
              ),
          ),
          SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("belum punya akun?"),
              TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Register()));
              }, child: Text("Daftar sekarang"),
              ),
            ],
          )
        ],
      ) ,
      ),

    );
  }
}