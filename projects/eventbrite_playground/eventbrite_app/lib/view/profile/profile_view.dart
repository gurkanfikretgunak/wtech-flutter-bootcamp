import 'package:eventbrite_app/core/init/provider/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/profile/index.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: context.read<UserNotifier>().isLogin ? const UserProfile() : GuestProfile(),
    );
  }
}
