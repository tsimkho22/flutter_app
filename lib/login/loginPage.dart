import 'package:firstapp/ManageData/ManageHomepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = true;
  void ShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  Widget showText() {
    return Text(
      'ຮ້ານຄາເຟ່ Neverland',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget userText() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 45,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            labelText: 'ຊື່ຜູ້ໃຊ້',
            prefixIcon: Icon(
              Icons.person,
              color: Colors.amber.shade900,
            ),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }

  Widget passwordText() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 45,
      child: TextField(
          obscureText: showPassword,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  28,
                ),
              ),
              labelText: 'ລະຫັດຜ່ານ',
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.amber.shade900,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  ShowPassword();
                },
                icon: showPassword
                    ? Icon(Icons.visibility)
                    : Icon(
                        Icons.visibility_off,
                      ),
              ),
              filled: true,
              fillColor: Colors.white)),
    );
  }

  Widget LoginButton() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.width * 0.1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: () {
          Navigator.of(context).pop();
          MaterialPageRoute route = MaterialPageRoute(
            builder: (_) => ManageHomePage(),
          );
          Navigator.of(context).push(route);
        },
        child: Text(
          'ເຂົ້າສູ້ລະບົບ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget SignUpButton() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.width * 0.1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber.shade700,
        ),
        onPressed: () {},
        child: Text(
          'ລົງທະບຽນ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget logUp() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        LoginButton(),
        SizedBox(
          width: 15,
        ),
        SignUpButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.blue.shade100,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: CircleAvatar(
                    backgroundColor: Colors.amber.shade900,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/icons/caffe.png",
                        width: 80,
                        height: 60,
                      ),
                    ),
                  ),
                ),
                showText(),
                SizedBox(
                  height: 20,
                ),
                userText(),
                SizedBox(
                  height: 20,
                ),
                passwordText(),
                SizedBox(
                  height: 20,
                ),
                logUp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
