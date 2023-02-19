import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pdf_viewer/utils/colors.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';

class PdfApp extends StatefulWidget {
  final String path;
  const PdfApp({Key? key, required this.path}) : super(key: key);

  @override
  State<PdfApp> createState() => _PdfAppState();
}

class _PdfAppState extends State<PdfApp> {
  late BannerAd _bannerAd;
  bool isAdLoaded = false;

  @override
  void initState() {
    _initBannerAd();
    super.initState();
  }

  _initBannerAd() {
    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: 'BannerAd',
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          isAdLoaded = true;
        },
        onAdFailedToLoad: (ad, error) {},
      ),
      request: AdRequest(),
    );
    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          "PDF VIEWER",
        ),
      ),
      body: PdfView(gestureNavigationEnabled: true, path: widget.path),
      bottomNavigationBar: isAdLoaded
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
            )
          : SizedBox(),
    );
  }
}
