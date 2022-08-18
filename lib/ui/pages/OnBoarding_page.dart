import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_wallet_app/shared/theme.dart';
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
      'Grow Your \n Financial Today',
      'Build From \n Zero to Freedom',
      'Start Together',
    ];
    List<String> subtitles = [
      'Our system is helping to \n achive a better goal',
      'Our System give you a freedom \n to save or pull your money',
      'We Will guide you to where \n you wanted it too \nLets Get Started',
    ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_onboarding.jpg',
                  height: 331,
                  ),
                   Image.asset(
                  'assets/img_onboarding.jpg',
                  height: 331,
                  ),
                   Image.asset(
                  'assets/img_onboarding.jpg',
                  height: 331,
                  ),
                ], 
                
                options: CarouselOptions(
                  height: 331,
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
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 24,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children:[
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    subtitles[currentIndex],
                    style: grayTextStyle.copyWith(
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  currentIndex == 2 ?
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity
                        ,
                        height: 50, 
                        child: TextButton(
                          onPressed: (){
                            carouselController.nextPage();
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
                        width: 150,
                        height: 50, 
                        child: TextButton(
                          onPressed: (){
                            carouselController.nextPage();
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
                      height: 12,
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
                      height: 12,
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
                      height: 12,
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
                        height: 50, 
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
          ],
        ) 
      ),
    );
  }
}