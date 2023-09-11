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
export '/core/helpers/show_snack_bar.dart';
export '/core/widgets/main_shimmer.dart';

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
export '/features/auth/data/request/login_request.dart';
export '/features/auth/data/request/sign_up_request.dart';
export '/features/auth/data/data_source/remote_login_data_source.dart';
export '/features/auth/domain/repository/login_repository.dart';
export '/features/auth/data/mapper/login_mapper.dart';
export '/features/auth/data/data_source/remote_sign_up_data_source.dart';
export '/features/auth/data/mapper/sign_up_mapper.dart';
export '/features/auth/domain/repository/sign_up_repository.dart';
export '/features/auth/domain/use_case/login_use_case.dart';
export '/features/auth/domain/use_case/sign_up_use_case.dart';
export '/features/auth/data/repository_implementation/login_repository_implementation.dart';
export '/features/auth/data/repository_implementation/sign_up_repository_implementation.dart';
export '/features/main/presentation/controller/main_controller.dart';
export '/features/main/presentation/view/widgets/bottom_nav_bar_item.dart';
export '/features/main/presentation/view/main_screen.dart';
export '/features/home/data/data_source/remote_home_data_source.dart';
export '/features/home/domain/model/data_home_model.dart';
export '/features/home/domain/model/home_model.dart';
export '/features/home/domain/repository/home_repository.dart';
export '/features/home/data/response/data_home_response.dart';
export '/features/home/data/response/home_response.dart';
export '/features/home/data/mapper/home_mapper.dart';
export '/features/home/data/mapper/data_home_mapper.dart';
export '/features/home/data/response/banner_data_home_response.dart';
export '/features/home/data/response/product_data_home_response.dart';
export '/features/home/domain/model/product_data_home_model.dart';
export '/features/home/domain/model/banner_data_home_model.dart';
export '/features/home/data/mapper/banner_data_home_mapper.dart';
export '/features/home/data/mapper/product_data_home_mapper.dart';
export '/features/home/presentation/view/screens/home_screen.dart';
export '/features/home/presentation/controller/home_controller.dart';
export '/features/home/domain/use_case/home_use_case.dart';
export '/features/home/data/repository_implementation/home_repository_implementation.dart';
export '/features/home/presentation/view/widgets/home_slider.dart';
export '/features/home/presentation/view/widgets/home_category.dart';
export '/features/home/presentation/view/widgets/home_app_bar.dart';
export '/core/widgets/structure_of_view_product.dart';
export '/features/home/presentation/view/widgets/title_of_department.dart';
export '/features/categories/data/response/current_page_of_category_response.dart';
export '/features/categories/data/response/data_category_response.dart';
export '/features/categories/data/response/categories_response.dart';
export '/features/categories/domain/model/data_category_model.dart';
export '/features/categories/domain/model/current_page_of_category_model.dart';
export '/features/categories/domain/model/categories_model.dart';
export '/features/categories/data/mapper/data_category_mapper.dart';
export '/features/categories/data/mapper/current_page_of_category_mapper.dart';
export '/features/categories/data/data_source/remote_categories_data_source.dart';
export '/features/categories/domain/repository/categories_repository.dart';
export '/features/categories/data/mapper/categories_mapper.dart';
export '/features/categories/data/repository_implementation/categories_repository_implementation.dart';
export '/features/categories/domain/use_case/categories_use_case.dart';
export '/features/auth/presentation/view/screens/forget_password_screen.dart';
export '/features/categories/presentation/view/screens/categories_screen.dart';
export '/features/categories/presentation/controller/categories_controller.dart';
export '/features/categories/data/response/current_page_of_category_details_response.dart';
export '/features/categories/data/response/product_current_page_of_category_details_response.dart';
export '/features/categories/domain/model/current_page_of_category_details_model.dart';
export '/features/categories/domain/model/product_current_page_of_category_details_model.dart';
export '/features/categories/data/response/category_details_response.dart';
export '/features/categories/domain/model/category_details_model.dart';
export '/features/categories/data/mapper/current_page_of_category_details_mapper.dart';
export '/features/categories/data/mapper/product_current_page_of_category_details_mapper.dart';
export '/features/categories/data/request/category_details_request.dart';
export '/features/categories/data/data_source/remote_category_details_data_source.dart';
export '/features/categories/data/mapper/category_details_mapper.dart';
export '/features/categories/domain/repository/category_details_repository.dart';
export '/features/categories/data/repository_implementation/category_details_repository_implementation.dart';
export '/features/categories/domain/use_case/category_details_use_case.dart';
export '/features/categories/presentation/view/screens/category_details_screen.dart';
export '/features/categories/presentation/view/widgets/categories_app_bar.dart';

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
export 'package:fluttertoast/fluttertoast.dart';
export 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
export 'package:shimmer/shimmer.dart';
