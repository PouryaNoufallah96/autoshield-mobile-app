import 'package:auto_shield/components/app_scaffold.dart';
import 'package:auto_shield/core/blocs/preferences_bloc/preferences_bloc.dart';
import 'package:auto_shield/gen/assets.gen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsOfUsePage extends HookWidget {
  const TermsOfUsePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isAccepted = useState(false);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: DotEffect(
                        isTop: false,
                        heightMulti: 1,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: DotEffect(
                        isTop: true,
                        heightMulti: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Assets.images.logoText.svg(),
                  const SizedBox(height: 24),
                  const Text(
                    'Terms of Use',
                    style: TextStyle(
                      fontFamily: 'CentraNo1-Bold',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Last Updated: August 2025',
                    style: TextStyle(
                      fontFamily: 'CentraNo1-Book',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffF1EEFF),
                          // border: BoxBorder.all(
                          //   color: context.colorExtension.neutral[400]!,
                          // ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: SizedBox(
                            width: double.infinity,
                            child: _Terms(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {
                      isAccepted.value = !isAccepted.value;
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        children: [
                          Checkbox.adaptive(
                            value: isAccepted.value,
                            onChanged: (value) {
                              isAccepted.value = value!;
                            },
                          ),
                          const Text(
                            'I agree to the Terms of Use',
                            style: TextStyle(
                              fontFamily: 'CentraNo1-Book',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        minimumSize: const Size.fromHeight(48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(12),
                        ),
                        backgroundColor: const Color(0xff4024D1),
                      ),
                      onPressed: !isAccepted.value
                          ? null
                          : () {
                              context
                                  .read<PreferencesBloc>()
                                  .add(PreferencesTermsOfUsePassed());
                            },
                      child: const Text(
                        'Accept',
                        style: TextStyle(
                          fontFamily: 'CentraNo1-Medium',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Terms extends StatefulWidget {
  const _Terms();

  @override
  State<_Terms> createState() => _TermsState();
}

class _TermsState extends State<_Terms> {
  final Uri _terms = Uri.https('rzprime.com', '/terms-of-use');

  Future<void> _onTap() async {
    try {
      await launchUrl(
        _terms,
        mode: LaunchMode.inAppWebView,
      );
    } catch (e, s) {
      debugPrint('launch error: $e\n$s');
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text:
            // ignore: lines_longer_than_80_chars
            'By connecting my wallet, I acknowledge that I have read, understood, and agree to the ',
        children: [
          TextSpan(
            text: 'Meta Coin Guard Terms of Use',
            style: const TextStyle(
              fontFamily: 'CentraNo1-Book',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff4024D1),
            ),
            recognizer: TapGestureRecognizer()..onTap = _onTap,
          ),
          const TextSpan(
            text:
                // ignore: lines_longer_than_80_chars
                ' which apply to my use of Meta Coin Guard and all its features.',
          ),
        ],
      ),
      style: const TextStyle(
        fontFamily: 'CentraNo1-Book',
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
