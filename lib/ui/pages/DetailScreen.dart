import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_wallet_app/shared/theme.dart';
import 'package:e_wallet_app/ui/pages/FirstPage.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.username}) : super(key: key);
  final String username;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              'Username Anda : ${widget.username}',
              style: blackTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}