import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink httpLink = HttpLink(
  Platform.isAndroid
      ? 'http://10.0.2.2:5001/graphql'
      : 'http://localhost:5001/graphql',
);

final graphQLClient = GetIt.I.registerSingleton(GraphQLClient(
  link: httpLink,
  cache: GraphQLCache(store: InMemoryStore()),
));
