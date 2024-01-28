import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});
  final String name = 'Roma';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'Merhaba $name ${name.length}',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 2,
                  wordSpacing: 8,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Merhaba $name ${name.length}',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              'Merhaba $name ${name.length}',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.cyanAccent),
            ),
          ],
        ),
      ),
    );
  }
}

// text stili olusturmanin 3 yolu
//1 direk yerinde still verme
//2 ayri bir klass olusturma
//3 flutterin kendi kutuphanesini kullanma
// style : Theme.of(context).textTheme.headline5 burdan sonra yerine gore degisir
// buna renk atamak icin ise style : Theme.of(context).textTheme.headline5?.copyWith(color:Colors.yellow),
// text stillerini ayri bir classta tutma
class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      fontSize: 16,
      letterSpacing: 2,
      wordSpacing: 8,
      fontWeight: FontWeight.w600);
}

//bu sekilde renk classlari olusturup cagiradabilirim
class ProjectColors {
  static Color welcomeColor = Colors.yellow;
}
