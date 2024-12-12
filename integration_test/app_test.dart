import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:ttm01_flutter_dependency_injection/data/post_repository.impl.dart';
import 'package:ttm01_flutter_dependency_injection/domain/entities/post.dart';
import 'package:ttm01_flutter_dependency_injection/domain/post_repository.dart';
import 'package:ttm01_flutter_dependency_injection/main.dart' as app;

import 'app_test.mocks.dart';

@GenerateMocks([PostRepositoryImpl])
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  final PostRepository mockedRepository = MockPostRepositoryImpl();
  // HttpOverrides.global = null;

  Get.put<PostRepository>(mockedRepository);

  testWidgets(
      'Should render a list of posts successfully when fetching to remote data source',
      (WidgetTester tester) async {
    // app.DetailPage(post: Post(userId: 1, id: 1, title: 'Test', body: 'Test'));
    app.main();
    when(mockedRepository.getAll()).thenAnswer(
      (_) => Future.value(const Right(<Post>[
        Post(
          id: 1,
          title: 'my post title',
          body: 'my post body',
          userId: 1,
        ),
      ])),
    );

    await tester.pumpAndSettle();

    final Finder titleFinder =
        find.byKey(const Key('postListItemGestureDetector'));

    await tester.tap(titleFinder);

    await tester.pumpAndSettle();

    expect(find.text('Post Title : my post title'), findsOneWidget);
    expect(find.text('Post Body : my post body'), findsOneWidget);
  });
}
