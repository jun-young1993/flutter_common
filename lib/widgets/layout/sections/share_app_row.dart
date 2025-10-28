import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/constants/common_constants.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class ShareAppRow extends StatelessWidget {
  final AppConfigState appConfig;

  final String invitationMessage;

  const ShareAppRow({
    Key? key,
    required this.appConfig,
    required this.invitationMessage,
  }) : super(key: key);

  String get _androidUrl => CommonConstants.getAndroidUrl(appConfig);
  String get _iosUrl => CommonConstants.getIosUrl(appConfig);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildShareOption(
          context,
          icon: Icons.qr_code,
          title: Tr.app.qrCode.tr(),
          subtitle: Tr.app.shareAppWithQrCode.tr(),
          onTap: () => _showQrCodeDialog(context),
        ),
        const SizedBox(height: 8),
        _buildShareOption(
          context,
          icon: Icons.link,
          title: Tr.app.linkShare.tr(),
          subtitle: Tr.app.copyLink.tr(),
          onTap: () => _copyAppUrl(context),
        ),
        const SizedBox(height: 8),
        _buildShareOption(
          context,
          icon: Icons.shopping_bag_outlined,
          title: Tr.app.moveToStore.tr(),
          subtitle: Tr.app.viewInStore.tr(),
          onTap: () => _openStore(context),
        )
      ],
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
                          appConfig.description,
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
                        if (appConfig.googlePlayUrl != null) ...[
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
                        if (appConfig.appleId != null) ...[
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
                      child: Text(Tr.app.close.tr()),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton.icon(
                      onPressed: () => _printQrCode(context),
                      icon: const Icon(Icons.print),
                      label: Text(Tr.app.print.tr()),
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
                  appConfig.description,
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
                if (appConfig.googlePlayUrl != null) ...[
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
                if (appConfig.appleId != null) ...[
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
        name: '${appConfig.description}_QR_Code.pdf',
      );
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text(Tr.message.printError.tr(namedArgs: {'e': e.toString()})),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  void _copyAppUrl(BuildContext context) async {
    await Clipboard.setData(
        ClipboardData(text: CommonConstants.getStoreUrl(appConfig)));
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(Tr.message.completeLinkCopy.tr()),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  void _openStore(BuildContext context) async {
    final url = CommonConstants.getStoreUrl(appConfig);

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(Tr.message.storeOpenError.tr()),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }
}
