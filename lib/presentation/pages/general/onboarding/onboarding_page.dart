import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gve_launch/application/application.dart';
import 'package:gve_launch/domain/domain.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../presentation.dart';
import 'widget/widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int slideIndex = 0;
  List<Widget> pages = [];
  CarouselController? pagerController = CarouselController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final appLoc = AppLocalizations.of(context);
    pages = [
      Pager(
        title: appLoc!.onboarding_title_1,
        description: appLoc.onboarding_description_1,
        cover_image: 'assets/images/onboarding_bg_1.svg',
        logo_image: 'assets/images/g_pic.png',
      ),
      Pager(
        title: appLoc.onboarding_title_2,
        description: appLoc.onboarding_description_2,
        cover_image: 'assets/images/onboarding_bg_2.svg',
        logo_image: 'assets/images/v_pic.png',
      ),
      Pager(
        title: appLoc.onboarding_title_3,
        description: appLoc.onboarding_description_3,
        cover_image: 'assets/images/onboarding_bg_3.svg',
        logo_image: 'assets/images/e_pic.png',
      )
    ];
  }

  void sliderCb(int position) {
    setState(() {
      slideIndex = position;
    });
  }

  @override
  void dispose() {
    pagerController = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            PagerCarousel(
              pageChangedCb: sliderCb,
              pages: pages,
              pagerController: pagerController,
            ),
            ActionPane(
              activeIndex: slideIndex,
              pageSize: pages.length,
              pagerController: pagerController,
            ),
            Positioned(
              top: 80,
              right: 16,
              child: Visibility(
                child: RoundedButton(
                  color: const Color(0xFFE3E1E1),
                  onPressed: ()=>context.read<AuthenticationBloc>().add(AuthenticationEvent.switchAppState(AppState.UNAUTHENTICATED)),
                  label: AppLocalizations.of(context)!.skip,
                ),
                visible: slideIndex != pages.length - 1,
              )
            ),
            Positioned(
              bottom: 65.0,
              left: 0.0,
              right: 0.0,
              child: Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: slideIndex,
                  count:  pages.length,
                  effect:  const ExpandingDotsEffect(dotHeight: 8.0, dotWidth: 8.0,activeDotColor: const Color(0xFF598E48), dotColor:const Color(0xFFE3E1E1)),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}