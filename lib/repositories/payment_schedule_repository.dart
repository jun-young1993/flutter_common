import 'package:flutter_common/models/loan_repayment_summary/loan_repayment_summary.dart';
import 'package:flutter_common/models/payment_schedule/payment_schedule.dart';
import 'package:flutter_common/models/payment_schedule/payment_schedule_status.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class PaymentScheduleRepository {
  Future<List<PaymentSchedule>> findAllByLoanId(
    String loanId, {
    required int skip,
    required int take,
    required String order,
  });
  Future<List<PaymentScheduleStatus>> getPaymentStatus();
  Future<LoanRepaymentSummary> getLoanRepaymentSummary(String loanId);
}

class PaymentScheduleDefaultRepository extends PaymentScheduleRepository {
  final DioClient dioClient;

  PaymentScheduleDefaultRepository({required this.dioClient});

  @override
  Future<List<PaymentSchedule>> findAllByLoanId(
    String loanId, {
    required int skip,
    required int take,
    required String order,
  }) async {
    final response = await dioClient.get('/loans/$loanId/schedule',
        queryParameters: {'skip': skip, 'take': take, 'order': order});
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((e) => PaymentSchedule.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    throw Exception('Failed to load payment schedules: ${response.statusCode}');
  }

  @override
  Future<List<PaymentScheduleStatus>> getPaymentStatus() async {
    final response = await dioClient.get('/loans/payment/status');
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((e) => PaymentScheduleStatus.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    throw Exception('Failed to load payment status: ${response.statusCode}');
  }

  @override
  Future<LoanRepaymentSummary> getLoanRepaymentSummary(String loanId) async {
    final response = await dioClient.get('/loans/$loanId/summary');
    if (response.statusCode == 200) {
      return LoanRepaymentSummary.fromJson(
          response.data as Map<String, dynamic>);
    }
    throw Exception(
        'Failed to load loan repayment summary: ${response.statusCode}');
  }
}
