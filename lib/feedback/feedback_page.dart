import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String label;
  final VoidCallback onTap;

  const FeedbackPage(
      {Key? key,
      required this.imageAsset,
      required this.title,
      required this.label,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageAsset),
            SizedBox(
              height: 40,
            ),
            Text(
              title,
              style: AppTextStyles.heading30,
            ),
            SizedBox(
              height: 16,
            ),
            Text(label),
            SizedBox(
              height: 56,
            ),
            Container(
              height: 48,
              width: 180,
              child: NextButtonWidget(
                label: 'Avançar',
                backgroundColor: AppColors.purple,
                fontColor: AppColors.white,
                borderColor: AppColors.purple,
                colorOverlay: Colors.white30,
                onTap: onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
