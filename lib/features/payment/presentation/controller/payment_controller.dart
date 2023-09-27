import 'dart:io';
import 'package:flutter_stripe/flutter_stripe.dart';
import '/config/all_imports.dart';
import 'package:http/http.dart' as http;

class PaymentController extends GetxController with ShowSnackBar {
  static PaymentController get to => Get.find();

  /// Stripe accept only pay by (Cents).  >>>>>  {1 dolors = 100 Cents}

  Future<String> _makePaymentIntent(String amount, String currency) async {
    Stripe.publishableKey = ApiConstants.publishableKey;
    final response = await http.post(
      Uri.parse(RequestsApi.paymentUrl),
      headers: {
        HttpHeaders.authorizationHeader:
            '${ApiConstants.bearer} ${ApiConstants.secretKey}',
      },
      body: {
        ApiConstants.amount: amount,
        ApiConstants.currency: currency,
      },
    );

    return jsonDecode(response.body)[ApiConstants.clientSecret];
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

  Future<void> makePayment(double amount) async {
    try {
      String price = (amount * 100).toInt().toString();
      String clientSecret = await _makePaymentIntent(price, 'USD');
      await _initPaymentSheet(clientSecret);
      await Stripe.instance.presentPaymentSheet();
    } catch (e) {
      // showSnackBar(ManagerStrings.somethingWentWrongTryAgain, true);
    }
  }
}
