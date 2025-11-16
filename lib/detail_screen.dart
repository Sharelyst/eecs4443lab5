import 'package:flutter/material.dart';
import 'item_model.dart';

/// Detail screen that shows a full-size image, title, and description
/// for the selected [Item].
///
/// The [Item] is passed via the constructor when navigating with Navigator.push.
class DetailScreen extends StatelessWidget {
  final Item item;

  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    // Fallback text for missing data (basic error handling).
    final String safeTitle = item.title.trim().isEmpty
        ? 'No title available'
        : item.title;
    final String safeDescription = item.description.trim().isEmpty
        ? 'No description available for this item.'
        : item.description;

    return Scaffold(
      appBar: AppBar(
        // Show a safe title in the AppBar.
        title: Text(safeTitle, overflow: TextOverflow.ellipsis),
      ),
      // SingleChildScrollView ensures that long content can scroll.
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Responsive image area: AspectRatio keeps the image height reasonable
            // in both portrait and landscape orientations.
            AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  item.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    // Placeholder if network image fails to load.
                    return Container(
                      color: Colors.grey[300],
                      alignment: Alignment.center,
                      child: const Icon(Icons.broken_image, size: 48),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              safeTitle,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              safeDescription,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
