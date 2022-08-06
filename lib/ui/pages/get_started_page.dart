import "package:flutter/material.dart";
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/image_get_started.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Fly Like a Bird',
                    style: whiteTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Explore new world with us and let yourself get an amazing experiences',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: 220,
                    height: 55,
                    margin: const EdgeInsets.only(top: 50, bottom: 80),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-up');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: whiteTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
