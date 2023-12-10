/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.com
import 'package:isar/isar.dart';
import 'package:test_app/models/models.dart';

part 'product.g.dart';

@collection
class IsarProduct {
   Id? isarId;

  @Index(unique: true, replace: true) int? id;
 String? title;
 String? description;
 double? price;
 double? discountPercentage;
 double? rating;
 double? stock;
 String? brand;
 String? category;
 String? thumbnail;
 List<String>? images;

  
  IsarProduct({
    this.id,
this.title,
this.description,
this.price,
this.discountPercentage,
this.rating,
this.stock,
this.brand,
this.category,
this.thumbnail,
this.images,
  });
}

extension IsarProductConverter on IsarProduct {
  /// convert [IsarProduct] to [Product]
  Product fromIsar() {
    return Product(
      id:id,
title:title,
description:description,
price:price,
discountPercentage:discountPercentage,
rating:rating,
stock:stock,
brand:brand,
category:category,
thumbnail:thumbnail,
images:images,

    );
  }
}

extension ProductConverter on Product {
  /// convert [Product] to [IsarProduct]
  IsarProduct toIsar() {
    return IsarProduct(
      id:id,
title:title,
description:description,
price:price?.toDouble(),
discountPercentage:discountPercentage?.toDouble(),
rating:rating?.toDouble(),
stock:stock?.toDouble(),
brand:brand,
category:category,
thumbnail:thumbnail,
images:images,

    );
  }
}
