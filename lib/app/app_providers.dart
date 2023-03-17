import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appwrite/appwrite.dart';

final awClientProvider = Provider<Client>((ref) {
  Client client = Client();
  client
      .setEndpoint('http://donjabonoso.monster/v1')
      .setProject('640ba0426a83c0666f69');
  return client;
});

final awAccountProvider = Provider<Account>((ref) {
  final awClient = ref.watch(awClientProvider);
  return Account(awClient);
});

final awDatabaseProvider = Provider<Databases>(
  (ref) {
    final awClient = ref.watch(awClientProvider);
    return Databases(awClient);
  },
);

final awRealTimeProvider = Provider<Realtime>(
  (ref) {
    final awClient = ref.watch(awClientProvider);
    return Realtime(awClient);
  },
);
