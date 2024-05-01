// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_gen_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newCounterHash() => r'd68d89799f1753fd9353afff32a6c1797b2127d7';

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

/// See also [newCounter].
@ProviderFor(newCounter)
const newCounterProvider = NewCounterFamily();

/// See also [newCounter].
class NewCounterFamily extends Family<AsyncValue<int>> {
  /// See also [newCounter].
  const NewCounterFamily();

  /// See also [newCounter].
  NewCounterProvider call(
    int a,
    int b,
    int c,
  ) {
    return NewCounterProvider(
      a,
      b,
      c,
    );
  }

  @override
  NewCounterProvider getProviderOverride(
    covariant NewCounterProvider provider,
  ) {
    return call(
      provider.a,
      provider.b,
      provider.c,
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
  String? get name => r'newCounterProvider';
}

/// See also [newCounter].
class NewCounterProvider extends AutoDisposeFutureProvider<int> {
  /// See also [newCounter].
  NewCounterProvider(
    int a,
    int b,
    int c,
  ) : this._internal(
          (ref) => newCounter(
            ref as NewCounterRef,
            a,
            b,
            c,
          ),
          from: newCounterProvider,
          name: r'newCounterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newCounterHash,
          dependencies: NewCounterFamily._dependencies,
          allTransitiveDependencies:
              NewCounterFamily._allTransitiveDependencies,
          a: a,
          b: b,
          c: c,
        );

  NewCounterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.a,
    required this.b,
    required this.c,
  }) : super.internal();

  final int a;
  final int b;
  final int c;

  @override
  Override overrideWith(
    FutureOr<int> Function(NewCounterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NewCounterProvider._internal(
        (ref) => create(ref as NewCounterRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        a: a,
        b: b,
        c: c,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _NewCounterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NewCounterProvider &&
        other.a == a &&
        other.b == b &&
        other.c == c;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, a.hashCode);
    hash = _SystemHash.combine(hash, b.hashCode);
    hash = _SystemHash.combine(hash, c.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NewCounterRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `a` of this provider.
  int get a;

  /// The parameter `b` of this provider.
  int get b;

  /// The parameter `c` of this provider.
  int get c;
}

class _NewCounterProviderElement extends AutoDisposeFutureProviderElement<int>
    with NewCounterRef {
  _NewCounterProviderElement(super.provider);

  @override
  int get a => (origin as NewCounterProvider).a;
  @override
  int get b => (origin as NewCounterProvider).b;
  @override
  int get c => (origin as NewCounterProvider).c;
}

String _$newClassCounterHash() => r'd1f6bc07788928b142d5eb3b86853fc7cb1918d4';

abstract class _$NewClassCounter extends BuildlessAutoDisposeNotifier<int> {
  late final int a;
  late final int b;
  late final int c;
  late final int d;

  int build(
    int a,
    int b,
    int c,
    int d,
  );
}

/// See also [NewClassCounter].
@ProviderFor(NewClassCounter)
const newClassCounterProvider = NewClassCounterFamily();

/// See also [NewClassCounter].
class NewClassCounterFamily extends Family<int> {
  /// See also [NewClassCounter].
  const NewClassCounterFamily();

  /// See also [NewClassCounter].
  NewClassCounterProvider call(
    int a,
    int b,
    int c,
    int d,
  ) {
    return NewClassCounterProvider(
      a,
      b,
      c,
      d,
    );
  }

  @override
  NewClassCounterProvider getProviderOverride(
    covariant NewClassCounterProvider provider,
  ) {
    return call(
      provider.a,
      provider.b,
      provider.c,
      provider.d,
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
  String? get name => r'newClassCounterProvider';
}

/// See also [NewClassCounter].
class NewClassCounterProvider
    extends AutoDisposeNotifierProviderImpl<NewClassCounter, int> {
  /// See also [NewClassCounter].
  NewClassCounterProvider(
    int a,
    int b,
    int c,
    int d,
  ) : this._internal(
          () => NewClassCounter()
            ..a = a
            ..b = b
            ..c = c
            ..d = d,
          from: newClassCounterProvider,
          name: r'newClassCounterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newClassCounterHash,
          dependencies: NewClassCounterFamily._dependencies,
          allTransitiveDependencies:
              NewClassCounterFamily._allTransitiveDependencies,
          a: a,
          b: b,
          c: c,
          d: d,
        );

  NewClassCounterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
  }) : super.internal();

  final int a;
  final int b;
  final int c;
  final int d;

  @override
  int runNotifierBuild(
    covariant NewClassCounter notifier,
  ) {
    return notifier.build(
      a,
      b,
      c,
      d,
    );
  }

  @override
  Override overrideWith(NewClassCounter Function() create) {
    return ProviderOverride(
      origin: this,
      override: NewClassCounterProvider._internal(
        () => create()
          ..a = a
          ..b = b
          ..c = c
          ..d = d,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        a: a,
        b: b,
        c: c,
        d: d,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<NewClassCounter, int> createElement() {
    return _NewClassCounterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NewClassCounterProvider &&
        other.a == a &&
        other.b == b &&
        other.c == c &&
        other.d == d;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, a.hashCode);
    hash = _SystemHash.combine(hash, b.hashCode);
    hash = _SystemHash.combine(hash, c.hashCode);
    hash = _SystemHash.combine(hash, d.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NewClassCounterRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `a` of this provider.
  int get a;

  /// The parameter `b` of this provider.
  int get b;

  /// The parameter `c` of this provider.
  int get c;

  /// The parameter `d` of this provider.
  int get d;
}

class _NewClassCounterProviderElement
    extends AutoDisposeNotifierProviderElement<NewClassCounter, int>
    with NewClassCounterRef {
  _NewClassCounterProviderElement(super.provider);

  @override
  int get a => (origin as NewClassCounterProvider).a;
  @override
  int get b => (origin as NewClassCounterProvider).b;
  @override
  int get c => (origin as NewClassCounterProvider).c;
  @override
  int get d => (origin as NewClassCounterProvider).d;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
