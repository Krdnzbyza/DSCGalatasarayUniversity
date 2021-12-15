import 'package:dsc_gs_widgets/contants/app_color_contants.dart';
import 'package:dsc_gs_widgets/contants/app_text_contansts.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class StatelesPage extends StatelessWidget {
  const StatelesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppTextContants.appbarSecondPage),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: context.dynamicHeight(0.4),
              width: context.dynamicWidth(0.3),
              child: _fadeImageShow(),
            ),
            const Divider(
              thickness: 20,
              color: AppColorContants.dividerColorTheme,
            ),
            const FlutterLogo(
              size: 50,
            ),
            _showListText(context)
          ],
        ),
      ),
    );
  }

  FadeInImage _fadeImageShow() {
    return FadeInImage.assetNetwork(
        fadeInCurve: Curves.linear,
        repeat: ImageRepeat.noRepeat,
        fadeInDuration: Duration(seconds: 4),
        placeholder: 'assets/images/teddy.jpeg',
        image: 'https://picsum.photos/id/237/200/300');
  }

  TextButton _showListText(BuildContext context) {
    return TextButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Padding(
                    padding: context.paddingMedium,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppTextContants.programmingLanguageFirst,
                          style: context.textTheme.headline4,
                        ),
                        const Divider(
                          thickness: 22,
                        ),
                        Text(
                          AppTextContants.programmingLanguageSecond,
                          style: context.textTheme.headline4,
                        )
                      ],
                    ),
                  ));
        },
        child: _showListButton(context));
  }

  Text _showListButton(BuildContext context) {
    return Text(
      AppTextContants.showProgrammingLanguage,
      style: context.textTheme.headline3?.copyWith(color: context.colorScheme.error),
    );
  }
}
