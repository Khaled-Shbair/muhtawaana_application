import '/config/all_imports.dart';

class EditProfileController extends GetxController
    with ShowLoadingDialog, ShowSnackBar {
  late TextEditingController email;
  late TextEditingController name;
  late TextEditingController phone;
  var formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    name = TextEditingController();
    phone = TextEditingController();
  }

  @override
  void onClose() {
    email.dispose();
    name.dispose();
    phone.dispose();
    super.onClose();
  }

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
  // Get user data form shared preferences
  final AppSettingsSharedPreferences _sharedPref =
      instance<AppSettingsSharedPreferences>();

  String get userName => name.text.isNotEmpty ? name.text : _sharedPref.getName;

  String get userEmail =>
      email.text.isNotEmpty ? email.text : _sharedPref.getEmail;

  String get userImage =>
      _updatedImagePath != null ? _updatedImagePath! : _sharedPref.getImage;

  String get userPhone =>
      phone.text.isNotEmpty ? phone.text : _sharedPref.getPhone;

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
// Functions to update profile

  final EditProfileUseCase _editProfileUseCase = instance<EditProfileUseCase>();

  void performEditProfile(context) {
    if (email.text.isNotEmpty ||
        phone.text.isNotEmpty ||
        name.text.isNotEmpty ||
        _imageCamera != null) {
      _editProfile(context);
    } else {
      Get.back();
    }
  }

  void _editProfile(context) async {
    showLoadingDialog(context);
    (await _editProfileUseCase.execute(_input())).fold(
      (l) {
        Get.back();
        showSnackBar(l.message, true);
      },
      (r) async {
        await _sharedPref.setUser(
          _dataUserModel(
            points: r.data.points,
            id: r.data.id,
            phone: r.data.phone,
            credit: r.data.credit,
            email: r.data.email,
            name: r.data.name,
            image: r.data.image,
            token: r.data.token,
          ),
        );
        Get.back();
        Get.back();
      },
    );
    update();
  }

  EditProfileBaseUseCaseInput _input() {
    if (_imageCamera != null) {
      return EditProfileBaseUseCaseInput(
        email: email.text.isNotEmpty ? email.text.toString() : userEmail,
        name: name.text.isNotEmpty ? name.text.toString() : userName,
        phone: phone.text.isNotEmpty ? phone.text.toString() : userPhone,
        image: _imageCamera!,
      );
    } else {
      return EditProfileBaseUseCaseInput(
        email: email.text.isNotEmpty ? email.text.toString() : userEmail,
        name: name.text.isNotEmpty ? name.text.toString() : userName,
        phone: phone.text.isNotEmpty ? phone.text.toString() : userPhone,
      );
    }
  }

  DataUserModel _dataUserModel({
    required String token,
    required String name,
    required String image,
    required String email,
    required String phone,
    required int credit,
    required int id,
    required int points,
  }) {
    return DataUserModel(
      token: token,
      name: name,
      image: image,
      email: email,
      credit: credit,
      phone: phone,
      id: id,
      points: points,
    );
  }

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
  //Get image from camera or gallery
  String? _imageCamera;
  String? _updatedImagePath;

  bool checkFileImage() => _imageCamera != null;

  pickImage(ImageSource imageSource) async {
    final ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: imageSource);
    if (file != null) {
      ImageCropper cropper = ImageCropper();
      CroppedFile? imageCropper = await cropper.cropImage(
        sourcePath: file.path,
        aspectRatio: const CropAspectRatio(
          ratioX: AppConstants.aspectRatioRatioX,
          ratioY: AppConstants.aspectRatioRatioY,
        ),
        compressQuality: AppConstants.compressQualityOfImageCamera,
        uiSettings: [
          AndroidUiSettings(),
          IOSUiSettings(),
        ],
      );
      _updatedImagePath = imageCropper!.path;
      _imageCamera = base64Encode(await imageCropper.readAsBytes());
    }
  }

  void cameraButton() async {
    await pickImage(ImageSource.camera);
    update();
    Get.back();
  }

  void galleryButton() async {
    await pickImage(ImageSource.gallery);
    update();
    Get.back();
  }

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
  //Function to back page and remove controller of edit profile
  void backButton() {
    finishEditProfile();
    _imageCamera = null;
    _updatedImagePath = null;
    email.text = '';
    name.text = '';
    phone.text = '';
    Get.back();
  }
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
}
