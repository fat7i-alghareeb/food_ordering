// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $FoodsTable extends Foods with TableInfo<$FoodsTable, Food> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _deliveryMeta =
      const VerificationMeta('delivery');
  @override
  late final GeneratedColumn<int> delivery = GeneratedColumn<int>(
      'delivery', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _reviewMeta = const VerificationMeta('review');
  @override
  late final GeneratedColumn<int> review = GeneratedColumn<int>(
      'review', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ratingsMeta =
      const VerificationMeta('ratings');
  @override
  late final GeneratedColumn<int> ratings = GeneratedColumn<int>(
      'ratings', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 60),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, delivery, review, ratings, price, name, image, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'foods';
  @override
  VerificationContext validateIntegrity(Insertable<Food> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('delivery')) {
      context.handle(_deliveryMeta,
          delivery.isAcceptableOrUnknown(data['delivery']!, _deliveryMeta));
    } else if (isInserting) {
      context.missing(_deliveryMeta);
    }
    if (data.containsKey('review')) {
      context.handle(_reviewMeta,
          review.isAcceptableOrUnknown(data['review']!, _reviewMeta));
    } else if (isInserting) {
      context.missing(_reviewMeta);
    }
    if (data.containsKey('ratings')) {
      context.handle(_ratingsMeta,
          ratings.isAcceptableOrUnknown(data['ratings']!, _ratingsMeta));
    } else if (isInserting) {
      context.missing(_ratingsMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Food map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Food(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      delivery: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}delivery'])!,
      review: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}review'])!,
      ratings: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ratings'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $FoodsTable createAlias(String alias) {
    return $FoodsTable(attachedDatabase, alias);
  }
}

class Food extends DataClass implements Insertable<Food> {
  final int id;
  final int delivery;
  final int review;
  final int ratings;
  final double price;
  final String name;
  final String image;
  final String description;
  const Food(
      {required this.id,
      required this.delivery,
      required this.review,
      required this.ratings,
      required this.price,
      required this.name,
      required this.image,
      required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['delivery'] = Variable<int>(delivery);
    map['review'] = Variable<int>(review);
    map['ratings'] = Variable<int>(ratings);
    map['price'] = Variable<double>(price);
    map['name'] = Variable<String>(name);
    map['image'] = Variable<String>(image);
    map['description'] = Variable<String>(description);
    return map;
  }

  FoodsCompanion toCompanion(bool nullToAbsent) {
    return FoodsCompanion(
      id: Value(id),
      delivery: Value(delivery),
      review: Value(review),
      ratings: Value(ratings),
      price: Value(price),
      name: Value(name),
      image: Value(image),
      description: Value(description),
    );
  }

  factory Food.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Food(
      id: serializer.fromJson<int>(json['id']),
      delivery: serializer.fromJson<int>(json['delivery']),
      review: serializer.fromJson<int>(json['review']),
      ratings: serializer.fromJson<int>(json['ratings']),
      price: serializer.fromJson<double>(json['price']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'delivery': serializer.toJson<int>(delivery),
      'review': serializer.toJson<int>(review),
      'ratings': serializer.toJson<int>(ratings),
      'price': serializer.toJson<double>(price),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
      'description': serializer.toJson<String>(description),
    };
  }

  Food copyWith(
          {int? id,
          int? delivery,
          int? review,
          int? ratings,
          double? price,
          String? name,
          String? image,
          String? description}) =>
      Food(
        id: id ?? this.id,
        delivery: delivery ?? this.delivery,
        review: review ?? this.review,
        ratings: ratings ?? this.ratings,
        price: price ?? this.price,
        name: name ?? this.name,
        image: image ?? this.image,
        description: description ?? this.description,
      );
  Food copyWithCompanion(FoodsCompanion data) {
    return Food(
      id: data.id.present ? data.id.value : this.id,
      delivery: data.delivery.present ? data.delivery.value : this.delivery,
      review: data.review.present ? data.review.value : this.review,
      ratings: data.ratings.present ? data.ratings.value : this.ratings,
      price: data.price.present ? data.price.value : this.price,
      name: data.name.present ? data.name.value : this.name,
      image: data.image.present ? data.image.value : this.image,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Food(')
          ..write('id: $id, ')
          ..write('delivery: $delivery, ')
          ..write('review: $review, ')
          ..write('ratings: $ratings, ')
          ..write('price: $price, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, delivery, review, ratings, price, name, image, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Food &&
          other.id == this.id &&
          other.delivery == this.delivery &&
          other.review == this.review &&
          other.ratings == this.ratings &&
          other.price == this.price &&
          other.name == this.name &&
          other.image == this.image &&
          other.description == this.description);
}

class FoodsCompanion extends UpdateCompanion<Food> {
  final Value<int> id;
  final Value<int> delivery;
  final Value<int> review;
  final Value<int> ratings;
  final Value<double> price;
  final Value<String> name;
  final Value<String> image;
  final Value<String> description;
  const FoodsCompanion({
    this.id = const Value.absent(),
    this.delivery = const Value.absent(),
    this.review = const Value.absent(),
    this.ratings = const Value.absent(),
    this.price = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.description = const Value.absent(),
  });
  FoodsCompanion.insert({
    this.id = const Value.absent(),
    required int delivery,
    required int review,
    required int ratings,
    required double price,
    required String name,
    required String image,
    required String description,
  })  : delivery = Value(delivery),
        review = Value(review),
        ratings = Value(ratings),
        price = Value(price),
        name = Value(name),
        image = Value(image),
        description = Value(description);
  static Insertable<Food> custom({
    Expression<int>? id,
    Expression<int>? delivery,
    Expression<int>? review,
    Expression<int>? ratings,
    Expression<double>? price,
    Expression<String>? name,
    Expression<String>? image,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (delivery != null) 'delivery': delivery,
      if (review != null) 'review': review,
      if (ratings != null) 'ratings': ratings,
      if (price != null) 'price': price,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (description != null) 'description': description,
    });
  }

  FoodsCompanion copyWith(
      {Value<int>? id,
      Value<int>? delivery,
      Value<int>? review,
      Value<int>? ratings,
      Value<double>? price,
      Value<String>? name,
      Value<String>? image,
      Value<String>? description}) {
    return FoodsCompanion(
      id: id ?? this.id,
      delivery: delivery ?? this.delivery,
      review: review ?? this.review,
      ratings: ratings ?? this.ratings,
      price: price ?? this.price,
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (delivery.present) {
      map['delivery'] = Variable<int>(delivery.value);
    }
    if (review.present) {
      map['review'] = Variable<int>(review.value);
    }
    if (ratings.present) {
      map['ratings'] = Variable<int>(ratings.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodsCompanion(')
          ..write('id: $id, ')
          ..write('delivery: $delivery, ')
          ..write('review: $review, ')
          ..write('ratings: $ratings, ')
          ..write('price: $price, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $CartItemsTable extends CartItems
    with TableInfo<$CartItemsTable, CartItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CartItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _foodIdMeta = const VerificationMeta('foodId');
  @override
  late final GeneratedColumn<int> foodId = GeneratedColumn<int>(
      'food_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES foods (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, quantity, foodId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cart_items';
  @override
  VerificationContext validateIntegrity(Insertable<CartItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('food_id')) {
      context.handle(_foodIdMeta,
          foodId.isAcceptableOrUnknown(data['food_id']!, _foodIdMeta));
    } else if (isInserting) {
      context.missing(_foodIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CartItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CartItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      foodId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}food_id'])!,
    );
  }

  @override
  $CartItemsTable createAlias(String alias) {
    return $CartItemsTable(attachedDatabase, alias);
  }
}

class CartItem extends DataClass implements Insertable<CartItem> {
  final int id;
  final int quantity;
  final int foodId;
  const CartItem(
      {required this.id, required this.quantity, required this.foodId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['quantity'] = Variable<int>(quantity);
    map['food_id'] = Variable<int>(foodId);
    return map;
  }

  CartItemsCompanion toCompanion(bool nullToAbsent) {
    return CartItemsCompanion(
      id: Value(id),
      quantity: Value(quantity),
      foodId: Value(foodId),
    );
  }

  factory CartItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CartItem(
      id: serializer.fromJson<int>(json['id']),
      quantity: serializer.fromJson<int>(json['quantity']),
      foodId: serializer.fromJson<int>(json['foodId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'quantity': serializer.toJson<int>(quantity),
      'foodId': serializer.toJson<int>(foodId),
    };
  }

  CartItem copyWith({int? id, int? quantity, int? foodId}) => CartItem(
        id: id ?? this.id,
        quantity: quantity ?? this.quantity,
        foodId: foodId ?? this.foodId,
      );
  CartItem copyWithCompanion(CartItemsCompanion data) {
    return CartItem(
      id: data.id.present ? data.id.value : this.id,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      foodId: data.foodId.present ? data.foodId.value : this.foodId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CartItem(')
          ..write('id: $id, ')
          ..write('quantity: $quantity, ')
          ..write('foodId: $foodId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, quantity, foodId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CartItem &&
          other.id == this.id &&
          other.quantity == this.quantity &&
          other.foodId == this.foodId);
}

class CartItemsCompanion extends UpdateCompanion<CartItem> {
  final Value<int> id;
  final Value<int> quantity;
  final Value<int> foodId;
  const CartItemsCompanion({
    this.id = const Value.absent(),
    this.quantity = const Value.absent(),
    this.foodId = const Value.absent(),
  });
  CartItemsCompanion.insert({
    this.id = const Value.absent(),
    required int quantity,
    required int foodId,
  })  : quantity = Value(quantity),
        foodId = Value(foodId);
  static Insertable<CartItem> custom({
    Expression<int>? id,
    Expression<int>? quantity,
    Expression<int>? foodId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (quantity != null) 'quantity': quantity,
      if (foodId != null) 'food_id': foodId,
    });
  }

  CartItemsCompanion copyWith(
      {Value<int>? id, Value<int>? quantity, Value<int>? foodId}) {
    return CartItemsCompanion(
      id: id ?? this.id,
      quantity: quantity ?? this.quantity,
      foodId: foodId ?? this.foodId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (foodId.present) {
      map['food_id'] = Variable<int>(foodId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartItemsCompanion(')
          ..write('id: $id, ')
          ..write('quantity: $quantity, ')
          ..write('foodId: $foodId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FoodsTable foods = $FoodsTable(this);
  late final $CartItemsTable cartItems = $CartItemsTable(this);
  late final FoodDao foodDao = FoodDao(this as AppDatabase);
  late final CartDao cartDao = CartDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [foods, cartItems];
}

typedef $$FoodsTableCreateCompanionBuilder = FoodsCompanion Function({
  Value<int> id,
  required int delivery,
  required int review,
  required int ratings,
  required double price,
  required String name,
  required String image,
  required String description,
});
typedef $$FoodsTableUpdateCompanionBuilder = FoodsCompanion Function({
  Value<int> id,
  Value<int> delivery,
  Value<int> review,
  Value<int> ratings,
  Value<double> price,
  Value<String> name,
  Value<String> image,
  Value<String> description,
});

class $$FoodsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FoodsTable,
    Food,
    $$FoodsTableFilterComposer,
    $$FoodsTableOrderingComposer,
    $$FoodsTableCreateCompanionBuilder,
    $$FoodsTableUpdateCompanionBuilder> {
  $$FoodsTableTableManager(_$AppDatabase db, $FoodsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$FoodsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$FoodsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> delivery = const Value.absent(),
            Value<int> review = const Value.absent(),
            Value<int> ratings = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> image = const Value.absent(),
            Value<String> description = const Value.absent(),
          }) =>
              FoodsCompanion(
            id: id,
            delivery: delivery,
            review: review,
            ratings: ratings,
            price: price,
            name: name,
            image: image,
            description: description,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int delivery,
            required int review,
            required int ratings,
            required double price,
            required String name,
            required String image,
            required String description,
          }) =>
              FoodsCompanion.insert(
            id: id,
            delivery: delivery,
            review: review,
            ratings: ratings,
            price: price,
            name: name,
            image: image,
            description: description,
          ),
        ));
}

class $$FoodsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $FoodsTable> {
  $$FoodsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get delivery => $state.composableBuilder(
      column: $state.table.delivery,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get review => $state.composableBuilder(
      column: $state.table.review,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get ratings => $state.composableBuilder(
      column: $state.table.ratings,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get price => $state.composableBuilder(
      column: $state.table.price,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter cartItemsRefs(
      ComposableFilter Function($$CartItemsTableFilterComposer f) f) {
    final $$CartItemsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.cartItems,
        getReferencedColumn: (t) => t.foodId,
        builder: (joinBuilder, parentComposers) =>
            $$CartItemsTableFilterComposer(ComposerState(
                $state.db, $state.db.cartItems, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$FoodsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $FoodsTable> {
  $$FoodsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get delivery => $state.composableBuilder(
      column: $state.table.delivery,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get review => $state.composableBuilder(
      column: $state.table.review,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get ratings => $state.composableBuilder(
      column: $state.table.ratings,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get price => $state.composableBuilder(
      column: $state.table.price,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$CartItemsTableCreateCompanionBuilder = CartItemsCompanion Function({
  Value<int> id,
  required int quantity,
  required int foodId,
});
typedef $$CartItemsTableUpdateCompanionBuilder = CartItemsCompanion Function({
  Value<int> id,
  Value<int> quantity,
  Value<int> foodId,
});

class $$CartItemsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CartItemsTable,
    CartItem,
    $$CartItemsTableFilterComposer,
    $$CartItemsTableOrderingComposer,
    $$CartItemsTableCreateCompanionBuilder,
    $$CartItemsTableUpdateCompanionBuilder> {
  $$CartItemsTableTableManager(_$AppDatabase db, $CartItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CartItemsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CartItemsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> quantity = const Value.absent(),
            Value<int> foodId = const Value.absent(),
          }) =>
              CartItemsCompanion(
            id: id,
            quantity: quantity,
            foodId: foodId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int quantity,
            required int foodId,
          }) =>
              CartItemsCompanion.insert(
            id: id,
            quantity: quantity,
            foodId: foodId,
          ),
        ));
}

class $$CartItemsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CartItemsTable> {
  $$CartItemsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$FoodsTableFilterComposer get foodId {
    final $$FoodsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.foodId,
        referencedTable: $state.db.foods,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FoodsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.foods, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$CartItemsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CartItemsTable> {
  $$CartItemsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$FoodsTableOrderingComposer get foodId {
    final $$FoodsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.foodId,
        referencedTable: $state.db.foods,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FoodsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.foods, joinBuilder, parentComposers)));
    return composer;
  }
}

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FoodsTableTableManager get foods =>
      $$FoodsTableTableManager(_db, _db.foods);
  $$CartItemsTableTableManager get cartItems =>
      $$CartItemsTableTableManager(_db, _db.cartItems);
}

mixin _$FoodDaoMixin on DatabaseAccessor<AppDatabase> {
  $FoodsTable get foods => attachedDatabase.foods;
}
mixin _$CartDaoMixin on DatabaseAccessor<AppDatabase> {
  $FoodsTable get foods => attachedDatabase.foods;
  $CartItemsTable get cartItems => attachedDatabase.cartItems;
}
