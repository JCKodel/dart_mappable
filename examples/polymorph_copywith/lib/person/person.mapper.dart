// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'person.dart';

class PersonMapper extends ClassMapperBase<Person> {
  PersonMapper._();

  static PersonMapper? _instance;
  static PersonMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonMapper._());
      ClothesMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Person';

  static String _$name(Person v) => v.name;
  static const Field<Person, String> _f$name = Field('name', _$name);
  static List<Clothes>? _$clothes(Person v) => v.clothes;
  static const Field<Person, List<Clothes>?> _f$clothes =
      Field('clothes', _$clothes, opt: true);

  @override
  final Map<Symbol, Field<Person, dynamic>> fields = const {
    #name: _f$name,
    #clothes: _f$clothes,
  };

  static Person _instantiate(DecodingData data) {
    return Person(name: data.dec(_f$name), clothes: data.dec(_f$clothes));
  }

  @override
  final Function instantiate = _instantiate;

  static Person fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<Person>(map));
  }

  static Person fromJson(String json) {
    return _guard((c) => c.fromJson<Person>(json));
  }
}

mixin PersonMappable {
  String toJson() {
    return PersonMapper._guard((c) => c.toJson(this as Person));
  }

  Map<String, dynamic> toMap() {
    return PersonMapper._guard((c) => c.toMap(this as Person));
  }

  PersonCopyWith<Person, Person, Person> get copyWith =>
      _PersonCopyWithImpl(this as Person, $identity, $identity);
  @override
  String toString() {
    return PersonMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PersonMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return PersonMapper._guard((c) => c.hash(this));
  }
}

extension PersonValueCopy<$R, $Out extends Person>
    on ObjectCopyWith<$R, Person, $Out> {
  PersonCopyWith<$R, Person, $Out> get $asPerson =>
      $base.as((v, t, t2) => _PersonCopyWithImpl(v, t, t2));
}

abstract class PersonCopyWith<$R, $In extends Person, $Out extends Person>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Clothes, ClothesCopyWith<$R, Clothes, Clothes>>? get clothes;
  $R call({String? name, List<Clothes>? clothes});
  PersonCopyWith<$R2, $In, $Out> $chain<$R2>(Then<$Out, $R2> t);
}

class _PersonCopyWithImpl<$R, $Out extends Person>
    extends ClassCopyWithBase<$R, Person, $Out>
    implements PersonCopyWith<$R, Person, $Out> {
  _PersonCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Person> $mapper = PersonMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Clothes, ClothesCopyWith<$R, Clothes, Clothes>>?
      get clothes => $value.clothes != null
          ? ListCopyWith($value.clothes!, (v, t) => v.copyWith.$chain<$R>(t),
              (v) => call(clothes: v))
          : null;
  @override
  $R call({String? name, Object? clothes = $none}) => $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (clothes != $none) #clothes: clothes
      }));
  @override
  Person $make(CopyWithData data) => Person(
      name: data.get(#name, or: $value.name),
      clothes: data.get(#clothes, or: $value.clothes));

  @override
  PersonCopyWith<$R2, Person, $Out> $chain<$R2>(Then<$Out, $R2> t) =>
      _PersonCopyWithImpl($value, $cast, t);
}
