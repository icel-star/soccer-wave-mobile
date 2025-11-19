import 'package:flutter/material.dart';
import 'package:soccer_wave/models/products_entry.dart';

class ProductsEntryCard extends StatelessWidget {
  final ProductsEntry product;
  final VoidCallback onTap;

  const ProductsEntryCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final f = product.fields;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: Colors.grey.shade300),
          ),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Thumbnail
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    'http://localhost:8000/proxy-image/?url=${Uri.encodeComponent(f.thumbnail)}',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 150,
                      color: Colors.grey[300],
                      child: const Center(child: Icon(Icons.broken_image)),
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                // Name
                Text(
                  f.name,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),

                // price
                Text(
                  '\$${f.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // rating
                Text(
                  'Rating: ${f.rating.toStringAsFixed(1)} / 5.0',
                  style: const TextStyle(fontSize: 14.0, color: Colors.orange),
                ),

                // brand
                Text('Brand: ${f.brand}'),
                const SizedBox(height: 6),

                // stock
                Text('Stock: ${f.stock} available'),
                const SizedBox(height: 6),

                // Category
                Text('Category: ${f.category}'),
                const SizedBox(height: 6),

                // description
                Text(
                  f.description.length > 100
                      ? '${f.description.substring(0, 100)}...'
                      : f.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 6),

                // Featured indicator
                if (f.isFeatured)
                  const Text(
                    'Featured',
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
