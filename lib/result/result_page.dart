import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;

  const ResultPage({
    Key? key,
    required this.title,
    required this.length,
    required this.result,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/trophy.png'),
            SizedBox(
              height: 40,
            ),
            Text(
              'Parabéns!',
              style: AppTextStyles.heading30,
            ),
            SizedBox(
              height: 16,
            ),
            Text.rich(
              TextSpan(
                text: 'Você concluiu',
                style: AppTextStyles.body,
                children: [
                  TextSpan(
                    text: '\n$title',
                    style: AppTextStyles.bodyBold,
                  ),
                  TextSpan(
                    text: '\ncom $result de $length acertos',
                    style: AppTextStyles.body,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 68),
              child: Row(
                children: [
                  Expanded(
                    child: NextButtonWidget(
                      label: 'Compartilhar',
                      backgroundColor: AppColors.purple,
                      fontColor: AppColors.white,
                      borderColor: AppColors.purple,
                      colorOverlay: Colors.purple.shade100,
                      onTap: () {
                        Share.share(
                            'DevQuiz NLW 5 - Flutter: Resultado do Quiz: $title\n Obtive: ${result / length}% de aproveitamento!');
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text(
                'Voltar ao início',
                style: GoogleFonts.notoSans(
                  fontSize: 15,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
