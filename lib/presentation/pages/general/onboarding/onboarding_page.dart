import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gve_launch/application/application.dart';
import 'package:gve_launch/domain/domain.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Onboarding screen'),
            ElevatedButton(
              onPressed: () {
                context.read<AuthenticationBloc>().add(AuthenticationEvent.switchAppState(AppState.UNAUTHENTICATED));
              },
              child: Text('CONTAINED BUTTON'),
            )
          ],
        ),
      )
    );
  }
}