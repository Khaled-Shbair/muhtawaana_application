import 'dart:io';
import '/config/all_imports.dart';

class MyImageProfile extends StatelessWidget {
  const MyImageProfile({
    required this.image,
    this.isFileImage = false,
    super.key,
  });

  final bool isFileImage;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ManagerHeight.h355,
      decoration: BoxDecoration(
        color: ManagerColors.whiteColor,
        image: isFileImage
            ? DecorationImage(
                image: FileImage(File(image)),
                filterQuality: FilterQuality.high,
                fit: BoxFit.fill,
              )
            : DecorationImage(
                image: CachedNetworkImageProvider(image),
                filterQuality: FilterQuality.high,
                fit: BoxFit.fill,
              ),
      ),
    );
  }
}
