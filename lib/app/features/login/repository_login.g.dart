// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_login.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryLoginHash() => r'fec9e1fd6df295aa7db2251ba5976cac51aaa1c4';

/// See also [repositoryLogin].
@ProviderFor(repositoryLogin)
final repositoryLoginProvider = AutoDisposeProvider<RepositoryLogin>.internal(
  repositoryLogin,
  name: r'repositoryLoginProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$repositoryLoginHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RepositoryLoginRef = AutoDisposeProviderRef<RepositoryLogin>;
String _$authGoogleSessionHash() => r'53b7106ba7b7fb79360e4fb328e49bce028d8c1c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef AuthGoogleSessionRef = AutoDisposeFutureProviderRef<bool>;

/// See also [authGoogleSession].
@ProviderFor(authGoogleSession)
const authGoogleSessionProvider = AuthGoogleSessionFamily();

/// See also [authGoogleSession].
class AuthGoogleSessionFamily extends Family<AsyncValue<bool>> {
  /// See also [authGoogleSession].
  const AuthGoogleSessionFamily();

  /// See also [authGoogleSession].
  AuthGoogleSessionProvider call({
    required String provider,
  }) {
    return AuthGoogleSessionProvider(
      provider: provider,
    );
  }

  @override
  AuthGoogleSessionProvider getProviderOverride(
    covariant AuthGoogleSessionProvider provider,
  ) {
    return call(
      provider: provider.provider,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'authGoogleSessionProvider';
}

/// See also [authGoogleSession].
class AuthGoogleSessionProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [authGoogleSession].
  AuthGoogleSessionProvider({
    required this.provider,
  }) : super.internal(
          (ref) => authGoogleSession(
            ref,
            provider: provider,
          ),
          from: authGoogleSessionProvider,
          name: r'authGoogleSessionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authGoogleSessionHash,
          dependencies: AuthGoogleSessionFamily._dependencies,
          allTransitiveDependencies:
              AuthGoogleSessionFamily._allTransitiveDependencies,
        );

  final String provider;

  @override
  bool operator ==(Object other) {
    return other is AuthGoogleSessionProvider && other.provider == provider;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, provider.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
