import 'package:flutter/material.dart';
import 'package:payflow/shared/auth/auth_controller.dart';
import 'package:payflow/shared/theme/app_colors.dart';
import 'package:payflow/shared/theme/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppImages.union),
            Image.asset(AppImages.logoFull)
          ],
        ),
      ),
    );
  }
}
