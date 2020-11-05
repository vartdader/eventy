import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class CarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: true,
        // resizeToAvoidBottomPadding: true,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Container(
                  height: 320,
                  width: 320,
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.grey.shade200,
                  ),
                  child: Carousel(
                    autoplayDuration: Duration(seconds: 3),
                    radius: Radius.circular(
                        MediaQuery.of(context).size.width * 0.45),
                    borderRadius: true,
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    dotIncreasedColor: Colors.grey.shade800,
                    dotColor: Colors.grey,
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: [
                      AssetImage('assets/images/dance.png'),
                      AssetImage('assets/images/campfire.png'),
                      AssetImage('assets/images/music.png'),
                      AssetImage('assets/images/train.png'),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              'Eventy',
              style: TextStyle(fontSize: 56, fontFamily: 'Bubble'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Etkinliklerin buluşma noktası !',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ButtonTheme(
              height: 42,
              minWidth: 112,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
                color: Colors.blue.shade400,
                child: Text(
                  'Giriş Yap',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(
                text: 'Hesabınız Yok mu ?',
                style: TextStyle(color: Colors.black, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Üye Olun.',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('object');
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
