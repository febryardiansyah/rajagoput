import 'package:flutter/material.dart';
import 'package:rajagoput/color_resources.dart';
import 'package:rajagoput/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raja Goput',
      theme: ThemeData(
        fontFamily: 'MaisonNeue',
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Raja Goput'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          padding: EdgeInsets.only(top: 4),
          child: Text(
            "RAJA GOPUT",
            style: TextStyle(
              color: ColorsResources.black1,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        leading: Container(
          padding: EdgeInsets.only(top: 0, left: 22),
          child: Image.asset(
            'assets/logo_clean.png',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.only(bottom: 22),
              child: Image.asset(
                'assets/vakekok.png',
                width: 280,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 32, bottom: 12),
                child: Text(
                  'Bypass your Gojek app',
                  style: TextStyle(
                    color: ColorsResources.black1,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 32, right: 32, bottom: 22),
                child: Text(
                  'Gojek nyuruh kamu update biar gabisa pakek double voucher dan Gopay Coins! Tekan tombol dibawah untuk bypass',
                  style: TextStyle(
                    color: ColorsResources.primary_text_color,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 32, right: 32, bottom: 22),
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.orange.withOpacity(0.2),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outlined,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          text: 'Pastikan aplikasi Gojek kamu versi ',
                          children: [
                            TextSpan(
                              text: '4.43.1 ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'kebawah!',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                left: 32,
                right: 32,
                top: 12,
                bottom: 12,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    40,
                  ),
                ),
                onPressed: () {
                  Services.bypass(context);
                },
                child: Text(
                  'BYPASS UPDATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
