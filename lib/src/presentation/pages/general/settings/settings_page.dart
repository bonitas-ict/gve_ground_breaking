import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/domain/domain.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({ Key? key }) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/pay_bg_2.svg'),
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: ()=> Navigator.of(context).pop(),
                        child: const Icon(Icons.arrow_back)
                      ),
                      const SizedBox(height: 40,),
                      Text('App\nSettings', style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: const Color(0xFFF9FBF6),
                          width: double.infinity,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children:[
                              ListTile(
                                leading: const Icon(Icons.notifications),
                                title: const Text('Notifications'),
                                subtitle: const Text('Enable or disable in-app notifications.'),
                                trailing: Switch(
                                  value: isToggled,
                                  activeColor: const Color(0xFF4D8047),
                                  onChanged: (bool value) {
                                          setState(() {
                                            isToggled = value;
                                          });
                                        },
                                ),
                              ),
                              const ListTile(
                                leading: Icon(Icons.question_answer),
                                title: Text('Notifications'),
                                subtitle: Text('For further information, contact us.'),
                                trailing: Icon(Icons.chevron_right_rounded)
                              ),
                              const ListTile(
                                title: Text('App Version'),
                                subtitle: Text('Version 1.0'),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 16,),
                        GestureDetector(
                          onTap: ()=>  context.read<AuthenticationBloc>().add(const AuthenticationEvent.switchAppState(AppState.UNAUTHENTICATED)),
                          child: Image.asset('assets/images/btn.png', width: 120)
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}