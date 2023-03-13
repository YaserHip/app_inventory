import 'package:app_inventory/app/app_providers.dart';
import 'package:appwrite/appwrite.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_login.g.dart';

class RepositoryLogin {
  RepositoryLogin({required this.account});
  final Account account;

  Future<void> oAuth2Session(String provider) async {
    final value = await account.createOAuth2Session(provider: provider);
    return value;
  }
}

@riverpod
RepositoryLogin repositoryLogin(RepositoryLoginRef ref) =>
    RepositoryLogin(account: ref.watch(awAccountProvider));
