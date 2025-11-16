import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'item_model.dart';

/// Main list screen that shows all items using ListView.builder.
/// Each row is a Card that the user can tap to navigate to the detail screen.
class ListScreen extends StatelessWidget {
  final List<Item> items;

  const ListScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Topics'), centerTitle: true),
      // ListView.builder creates items lazily, which is better for performance.
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return ItemCard(
            item: item,
            // When tapped, navigate to DetailScreen and pass the Item.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(item: item),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

/// Custom widget representing one row in the list.
/// Uses Card, InkWell, Row, and Column for a clean layout.
class ItemCard extends StatelessWidget {
  final Item item;
  final VoidCallback onTap;

  const ItemCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // Fallback text if fields are empty (basic error handling).
    final String safeTitle = item.title.trim().isEmpty
        ? 'No title available'
        : item.title;
    final String safeSummary = item.summary.trim().isEmpty
        ? 'No summary available.'
        : item.summary;

    return Card(
      child: InkWell(
        // InkWell makes the whole Card tappable and shows a ripple effect.
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              // Thumbnail image on the left.
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.network(
                    item.imageUrl,
                    fit: BoxFit.cover,
                    // If the image fails to load, show a simple placeholder.
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        alignment: Alignment.center,
                        child: const Icon(Icons.broken_image, size: 32),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // Text content on the right, expanded to fill remaining width.
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      safeTitle,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      safeSummary,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.grey[800]),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
