export 'package:flutter/material.dart';
export 'package:flutter/gestures.dart';

// config file
export 'dependency_injection.dart';
export 'constants/app_constants.dart';
export 'constants/locale_constants.dart';
export 'constants/api_constants.dart';
export 'constants/requests_api.dart';

// core file
export '/core/extensions/extensions.dart';
export '/core/languages/ar.dart';
export '/core/languages/en.dart';
export '/core/languages/translation.dart';
export '/core/resources/manager_colors.dart';
export '/core/resources/manager_fonts.dart';
export '/core/resources/manager_assets.dart';
export '/core/resources/manager_sizes.dart';
export '/core/resources/manager_strings.dart';
export '/core/resources/manager_styles.dart';
export '/core/resources/manager_text_theme_dark.dart';
export '/core/resources/manager_text_theme_light.dart';
export '/core/service/theme_service.dart';
export '/core/theme/manager_dark_theme.dart';
export '/core/theme/manager_light_theme.dart';
export '/core/util/size_util.dart';
export '/core/validator/validator.dart';
export '/core/resources/manager_text_style_app.dart';
export '/core/network/app_api.dart';
export '/core/network/dio_factory.dart';
export '/core/internet_checker/internet_checker.dart';
export '/core/error_handler/failure.dart';
export '/core/error_handler/response_code.dart';
export '/core/error_handler/error_handler.dart';
export '/core/helpers/showLoadingDialog.dart';
export '/core/storage/local/shared_preferences/app_settings_shared_preferences.dart';
export '/core/use_case/base_use_case.dart';
export '/core/widgets/will_pop_scope.dart';
export '/core/widgets/logo_app.dart';
export '/core/widgets/main_button.dart';
export '/core/widgets/main_text_field.dart';
export '/core/widgets/my_back_icon.dart';

// features file
export '/features/splash/presentation/controller/splash_controller.dart';
export '/features/splash/presentation/view/screens/splash_Screen.dart';
export '/features/on_boarding/presentation/view/screens/on_boarding_screen.dart';
export '/features/on_boarding/presentation/controller/on_boarding_controller.dart';
export '/features/on_boarding/presentation/view/widgets/page_view_item.dart';
export '/features/auth/presentation/view/screens/auth_screen.dart';
export '/features/auth/presentation/controller/login_controller.dart';
export '/features/auth/presentation/view/screens/login_screen.dart';
export '/features/auth/presentation/view/screens/sign_up_screen.dart';
export '/features/auth/presentation/controller/sign_up_controller.dart';
export '/features/auth/presentation/view/widgets/my_check_box.dart';
export '/features/auth/presentation/view/widgets/structure_of_login_and_sign_up.dart';
export '/features/auth/presentation/view/screens/change_password_screen.dart';
export '/features/auth/presentation/controller/change_password_controller.dart';
export '/features/auth/data/response/data_sign_up_response.dart';
export '/features/auth/data/response/sing_up_response.dart';
export '/features/auth/data/response/login_response.dart';
export '/features/auth/data/response/data_login_response.dart';
export '/features/auth/domain/model/data_login_model.dart';
export '/features/auth/domain/model/data_sign_up_model.dart';
export '/features/auth/domain/model/login_model.dart';
export '/features/auth/data/mapper/data_login_mapper.dart';
export '/features/auth/data/mapper/data_sign_up_mapper.dart';
export '/features/auth/domain/model/sing_up_model.dart';

// routes file
export '/routes/route_generator.dart';
export '/routes/routes.dart';

//external libraries
export 'package:get/get.dart';
export 'package:get_it/get_it.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:shared_preferences/shared_preferences.dart';
export 'package:flutter/foundation.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:pretty_dio_logger/pretty_dio_logger.dart';
export 'package:json_annotation/json_annotation.dart';
export 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
export 'package:carousel_slider/carousel_slider.dart';
