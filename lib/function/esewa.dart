import 'package:esewa/constants/constants.dart';
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
import 'package:flutter/cupertino.dart';

class Esewa {
  pay() {
    try {
      EsewaFlutterSdk.initPayment(
        esewaConfig: EsewaConfig(
          environment: Environment.test,
          clientId: EsewaID.esewaClientID,
          secretId: EsewaID.esewaSecretKey,
        ),
        esewaPayment: EsewaPayment(
          productId: "1d71jd81",
          productName: "Product One",
          productPrice: "20",
          callbackUrl: "www.test-url.com",
        ),
        onPaymentSuccess: (EsewaPaymentSuccessResult result) {
          debugPrint(":::SUCCESS:::");
          verify(result);
        },
        onPaymentFailure: () {
          debugPrint(":::FAILURE::: ");
        },
        onPaymentCancellation: () {
          debugPrint(":::CANCELLATION::: ");
        },
      );
    } catch (e) {
      debugPrint("EXCEPTION");
    }
  }
  verify (EsewaPaymentSuccessResult result){
    
  }
}
