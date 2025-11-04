import 'dart:async';

Future<T?> futureTimeout<T>(
  Future<T> future,
  Duration limit,
  void Function() onTimeout,
) async {
  try {
    return await future.timeout(
      limit,
    );
  } on TimeoutException {
    print('futureTimeout TimeoutException');
    onTimeout();
    return null;
  } catch (e, s) {
    print('futureTimeout  $e $s');
    onTimeout();
    return null;
  }
}
