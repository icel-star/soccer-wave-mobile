// To parse this JSON data, do
//
//     final productsEntry = productsEntryFromJson(jsonString);

import 'dart:convert';

List<ProductsEntry> productsEntryFromJson(String str) => List<ProductsEntry>.from(json.decode(str).map((x) => ProductsEntry.fromJson(x)));

String productsEntryToJson(List<ProductsEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductsEntry {
    String model;
    String pk;
    Fields fields;

    ProductsEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductsEntry.fromJson(Map<String, dynamic> json) => ProductsEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    double rating;
    String brand;
    String thumbnail;
    String category;
    int stock;
    DateTime createdAt;
    int productViews;
    bool isFeatured;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.rating,
        required this.brand,
        required this.thumbnail,
        required this.category,
        required this.stock,
        required this.createdAt,
        required this.productViews,
        required this.isFeatured,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        rating: json["rating"]?.toDouble(),
        brand: json["brand"],
        thumbnail: json["thumbnail"],
        category: json["category"],
        stock: json["stock"],
        createdAt: DateTime.parse(json["created_at"]),
        productViews: json["product_views"],
        isFeatured: json["is_featured"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "rating": rating,
        "brand": brand,
        "thumbnail": thumbnail,
        "category": category,
        "stock": stock,
        "created_at": createdAt.toIso8601String(),
        "product_views": productViews,
        "is_featured": isFeatured,
    };
}
