// Mocks generated by Mockito 5.4.4 from annotations
// in ttm01_flutter_dependency_injection/test/widget_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:ttm01_flutter_dependency_injection/data/post_repository.impl.dart'
    as _i3;
import 'package:ttm01_flutter_dependency_injection/domain/entities/post.dart'
    as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [PostRepositoryImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockPostRepositoryImpl extends _i1.Mock
    implements _i3.PostRepositoryImpl {
  MockPostRepositoryImpl() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<String, List<_i5.Post>>> getAll() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAll,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<String, List<_i5.Post>>>.value(
            _FakeEither_0<String, List<_i5.Post>>(
          this,
          Invocation.method(
            #getAll,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<String, List<_i5.Post>>>);
}
