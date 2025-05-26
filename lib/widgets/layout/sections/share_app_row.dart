import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_common/constants/common_constants.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class ShareAppRow extends StatelessWidget {
  final String appStoreUrl;
  final String appName;
  final String invitationMessage;
  final String? androidPackageName;
  final String? appleId;

  const ShareAppRow({
    Key? key,
    required this.appStoreUrl,
    required this.appName,
    required this.invitationMessage,
    this.androidPackageName,
    this.appleId,
  }) : super(key: key);

  String get _androidUrl => CommonConstants.getAndroidUrl(androidPackageName!);
  String get _iosUrl => CommonConstants.getIosUrl(appleId!);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    return Container(
      padding: EdgeInsets.all(isTablet ? 16 : 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.share_outlined,
                  size: isTablet ? 20 : 16,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                '앱 공유하기',
                style: TextStyle(
                  fontSize: isTablet ? 16 : 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
          SizedBox(height: isTablet ? 16 : 12),
          _buildShareOption(
            context,
            icon: Icons.qr_code,
            title: 'QR 코드',
            subtitle: 'QR 코드로 앱 공유하기',
            onTap: () => _showQrCodeDialog(context),
          ),
          const SizedBox(height: 8),
          _buildShareOption(
            context,
            icon: Icons.link,
            title: '링크 공유',
            subtitle: '앱 링크 복사하기',
            onTap: () => _copyAppUrl(context),
          ),
          const SizedBox(height: 8),
          _buildShareOption(
            context,
            icon: Icons.shopping_bag_outlined,
            title: '스토어로 이동',
            subtitle: '앱스토어/플레이스토어에서 보기',
            onTap: () => _openStore(context),
          ),
        ],
      ),
    );
  }

  Widget _buildShareOption(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.all(isTablet ? 16 : 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                size: isTablet ? 20 : 16,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: isTablet ? 15 : 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: isTablet ? 13 : 11,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              size: isTablet ? 24 : 20,
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }

  void _showQrCodeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '앱 QR 코드',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(height: 24),
                RepaintBoundary(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: Column(
                      children: [
                        Text(
                          appName,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          invitationMessage,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade700,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 24),
                        if (androidPackageName != null) ...[
                          const Text(
                            'Android',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 12),
                          QrImageView(
                            data: _androidUrl,
                            version: QrVersions.auto,
                            size: 200.0,
                            backgroundColor: Colors.white,
                          ),
                          const SizedBox(height: 24),
                        ],
                        if (appleId != null) ...[
                          const Text(
                            'iOS',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 12),
                          QrImageView(
                            data: _iosUrl,
                            version: QrVersions.auto,
                            size: 200.0,
                            backgroundColor: Colors.white,
                          ),
                          const SizedBox(height: 24),
                        ],
                        Text(
                          'QR 코드를 스캔하여 앱 설치하기',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('닫기'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton.icon(
                      onPressed: () => _printQrCode(context),
                      icon: const Icon(Icons.print),
                      label: const Text('프린트하기'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _printQrCode(BuildContext context) async {
    try {
      final pdf = pw.Document();

      // Use a built-in font that supports Korean
      final font = pw.Font.helvetica();

      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) {
            return pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.center,
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                pw.Text(
                  appName,
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 24,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(height: 20),
                pw.Text(
                  invitationMessage,
                  textAlign: pw.TextAlign.center,
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 16,
                  ),
                ),
                pw.SizedBox(height: 30),
                if (androidPackageName != null) ...[
                  pw.Text(
                    'Android',
                    style: pw.TextStyle(
                      font: font,
                      fontSize: 16,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.SizedBox(height: 12),
                  pw.Center(
                    child: pw.BarcodeWidget(
                      barcode: pw.Barcode.qrCode(),
                      data: _androidUrl,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  pw.SizedBox(height: 24),
                ],
                if (appleId != null) ...[
                  pw.Text(
                    'iOS',
                    style: pw.TextStyle(
                      font: font,
                      fontSize: 16,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.SizedBox(height: 12),
                  pw.Center(
                    child: pw.BarcodeWidget(
                      barcode: pw.Barcode.qrCode(),
                      data: _iosUrl,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  pw.SizedBox(height: 24),
                ],
                pw.Text(
                  'QR 코드를 스캔하여 앱 설치하기',
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 14,
                    color: PdfColors.grey700,
                  ),
                ),
              ],
            );
          },
        ),
      );

      await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save(),
        name: '${appName}_QR_Code.pdf',
      );
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('프린트 중 오류가 발생했습니다: $e'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  void _copyAppUrl(BuildContext context) async {
    await Clipboard.setData(ClipboardData(text: appStoreUrl));
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('앱 링크가 복사되었습니다'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  void _openStore(BuildContext context) async {
    final url = appStoreUrl;

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('스토어를 열 수 없습니다'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }
}
