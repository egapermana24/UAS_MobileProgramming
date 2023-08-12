import 'package:flutter/material.dart';
import 'constant.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(whiteColor.value),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 50),
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // menambahkan gambar
                Image.asset(
                  "assets/login.jpg",
                  height: 180,
                ),
                Text(
                  "Kabari",
                  style: textTextStyle.copyWith(fontSize: 30, fontWeight: bold),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "Login Agar Bisa Membaca Berita Yang Kamu Suka",
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "Username",
                        style: textTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: checkboxColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Masukkan Username Kamu",
                          hintStyle: textTextStyle.copyWith(
                              fontSize: 12, color: textColor.withOpacity(0.6)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // password
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "Password",
                        style: textTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: checkboxColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Masukkan Password Kamu",
                          hintStyle: textTextStyle.copyWith(
                              fontSize: 12, color: textColor.withOpacity(0.6)),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 17,
                          ),
                          // suffixIcon: Icon(
                          //   Icons.visibility_off,
                          // ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // membuat checkbox
                        Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: isChecked
                                    ? secondaryTextColor
                                    : Colors.grey,
                              ),
                            ),
                            child: Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value ?? false;
                                });
                              },
                              activeColor: secondaryTextColor,
                              checkColor: whiteColor,
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Ingat Aku",
                          style: greyTextStyle.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: InkWell(
                        onTap: () {
                          // Tindakan yang ingin Anda lakukan saat tautan diklik
                        },
                        child: Text(
                          "Lupa Password ?",
                          style: textTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomePage()), // Ganti HomeScreen() dengan widget yang sesuai dari home_screen.dart
                      );
                    },
                    child: Text("LOGIN",
                        style: whiteTextStyle.copyWith(fontWeight: bold)),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: checkboxColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/google.png",
                          height: 20,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text("LOGIN DENGAN GOOGLE",
                            style: textTextStyle.copyWith(fontWeight: bold)),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum Punya Akun ?",
                      style: secondaryTextStyle.copyWith(fontSize: 12),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        // Tindakan yang ingin Anda lakukan saat tautan diklik
                      },
                      child: Text(
                        "Daftar",
                        style: tncTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
