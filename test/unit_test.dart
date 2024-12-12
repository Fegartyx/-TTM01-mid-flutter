import 'package:flutter_test/flutter_test.dart';
import 'package:ttm01_flutter_dependency_injection/domain/entities/post.dart';
import 'package:ttm01_flutter_dependency_injection/ui/pages/detail_page.dart';

void main() {
  test('Test Page Have Data', () {
    DetailPage detailPage = DetailPage(
        post: Post(
            id: 1, title: 'my post title', body: 'my post body', userId: 1));

    expect(detailPage.post.id, 1);
  });
}
