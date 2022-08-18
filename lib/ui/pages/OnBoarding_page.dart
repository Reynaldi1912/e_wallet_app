import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_wallet_app/shared/theme.dart';
import 'package:e_wallet_app/ui/pages/FirstPage.dart';
import 'package:e_wallet_app/ui/pages/SignInPage.dart';
import 'package:flutter/material.dart';

class OnBoarding_page extends StatefulWidget{
  const OnBoarding_page({Key ? key}) : super(key: key);

  @override
  State<OnBoarding_page> createState() => _OnBoarding_pageState();
}
  class _OnBoarding_pageState extends State<OnBoarding_page>{
    int currentIndex = 0;
    CarouselController carouselController = CarouselController();

    List<String> titles = [
      'Pengalaman Pengguna \n Yang Baik',
      'Mejamin Keamanan Data',
      'Ayo Mulai !',
    ];
    List<String> subtitles = [
      'Menabung dan Menyimpan \n Uang dengan Mudah',
      'User Tidak Perlu Khawatir \n Uang Akan Hilang Atau Terpotong',
      'Bergegaslah Mendaftar \n Aplikasi Kami Akan Membantu \nManajemen Finansial Anda',
    ];
  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;

    
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: LayoutBuilder(
          builder: (context, constraints) {
            return Column(children: [
              CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_onboarding.png',
                  height: constraints.maxHeight * 0.3,
                  ),
                   Image.asset(
                  'assets/img_onboarding2.png',
                  height: constraints.maxHeight * 0.3,
                  ),
                   Image.asset(
                  'assets/img_onboarding3.png',
                  height: constraints.maxHeight * 0.3,
                  ),
                ], 
                
                options: CarouselOptions(
                  height: constraints.maxHeight * 0.4,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index , reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }
                ),
                carouselController: carouselController,
            ),
           
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: constraints.maxHeight * 0.07
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: constraints.maxHeight * 0.02,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.05,
                  ),
                  Text(
                    subtitles[currentIndex],
                    style: grayTextStyle.copyWith(
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.1,
                  ),
                  currentIndex == 2 ?
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        // height: 50, 
                        child: TextButton(
                          onPressed: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const FirstPage()),
                            );
                          }, 
                          style: TextButton.styleFrom(
                            backgroundColor : purpleColor
                          ),
                          child: Text(
                            'Get Started',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold
                            ),
                            ),
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.9,
                        height: constraints.maxHeight * 0.04, 
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignInPage()),
                            );
                          }, 
                          child: Text(
                            'Sign In',
                            style: grayTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold
                            ),
                            ),
                        ),
                      ),
                    ],
                  ) : 
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: constraints.maxHeight * 0.02,
                        margin: const EdgeInsets.only(
                          right: 10
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 0 ? blueColor : lightBackgroundColor ,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: constraints.maxHeight * 0.02,
                        margin: const EdgeInsets.only(
                          right: 10
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 1 ? blueColor : lightBackgroundColor ,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: constraints.maxHeight * 0.02,
                        margin: const EdgeInsets.only(
                          right: 10
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 2 ? blueColor : lightBackgroundColor ,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 150,
                        height: constraints.maxHeight * 0.04, 
                        child: TextButton(
                          onPressed: (){
                            carouselController.nextPage();
                          }, 
                          style: TextButton.styleFrom(
                            backgroundColor : purpleColor
                          ),
                          child: Text(
                            'Continue',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ]);
          },
        )
    );
  }
}