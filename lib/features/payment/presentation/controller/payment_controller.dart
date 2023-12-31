import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import '/config/all_imports.dart';

class PaymentController extends GetxController with ShowSnackBar {
  static PaymentController get to => Get.find();
  String _clientSecret = '';

  Future<void> _getClientSecret(String amount, String currency) async {
    try {
      Stripe.publishableKey = ApiConstants.publishableKey;

      Dio dio = Dio();
      final response = await dio.post(
        RequestsApi.paymentUrl,
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader:
                '${ApiConstants.bearer} ${ApiConstants.secretKey}',
            Headers.contentTypeHeader: Headers.formUrlEncodedContentType,
          },
        ),
        data: {
          ApiConstants.amount: amount,
          ApiConstants.currency: currency,
        },
      );
      _clientSecret = response.data[ApiConstants.clientSecret];
    } catch (e) {
      showSnackBar(ManagerStrings.somethingWentWrongTryAgain, true);
    }
  }

  Future<void> _initPaymentSheet(String clientSecret) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: clientSecret,
        merchantDisplayName: 'Payment',
        allowsDelayedPaymentMethods: true,
      ),
    );
  }

  Future<void> displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      CartController.to.clearCart();
    } catch (e) {}
  }

  Future<void> makePayment(double amount) async {
    String price = (amount * 100).toInt().toString();
    await _getClientSecret(price, 'USD');
    if (_clientSecret.isNotEmpty) {
      await _initPaymentSheet(_clientSecret);
      displayPaymentSheet();
    }
  }
}
