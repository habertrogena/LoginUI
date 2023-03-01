import 'package:flutter/material.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_string.dart';

class LoginHeaderWiget extends StatelessWidget {
  const LoginHeaderWiget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(tSplashImage),
          height: size.height * 0.2,
        ),
        Text(
          tLoginTittle,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          tLoginSubTittle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
