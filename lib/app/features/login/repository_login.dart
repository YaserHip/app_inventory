import 'package:app_inventory/app/app_providers.dart';
import 'package:appwrite/appwrite.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_login.g.dart';

class RepositoryLogin {
  RepositoryLogin({required this.account});
  final Account account;

  Future<bool> oAuth2Session(String provider) async {
    try {
      await account.createOAuth2Session(provider: provider);
      return true;
    } on Exception catch (e, _) {
      return false;
    }
  }
}

@riverpod
RepositoryLogin repositoryLogin(RepositoryLoginRef ref) =>
    RepositoryLogin(account: ref.watch(awAccountProvider));

@riverpod
Future<bool> authGoogleSession(AuthGoogleSessionRef ref,
    {required String provider}) {
  final repoLogin = ref.watch(repositoryLoginProvider).oAuth2Session(provider);
  return repoLogin;
}
