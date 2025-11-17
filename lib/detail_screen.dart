import 'package:flutter/material.dart';
import 'item_model.dart';

class DetailScreen extends StatelessWidget {
  final Item item;

  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    // handle empty text and assign them to a variable to be displayed
    final title = item.title.isEmpty ? "No title available" : item.title;
    final description = item.description.isEmpty
        ? "No description available."
        : item.description;

    return Scaffold(
      // title bar, handles overflow too.
      appBar: AppBar(title: Text(title, overflow: TextOverflow.ellipsis)),

      // create the layout
      body: LayoutBuilder(
        builder: (context, constraints) {
          // check if the phone is in landscape or portrait
          final bool isLandscape = constraints.maxWidth > constraints.maxHeight;

          // if portrait then display items in vertical list or column
          if (!isLandscape) {
            return Center(
              // displays in contrained box so the size of the image can be restricted
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                // can scroll if too much content
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        // layout for image
                        child: LayoutBuilder(
                          builder: (context, innerConstraints) {
                            // make the img max width to be 90% of its parent box
                            final double imgSize =
                                innerConstraints.maxWidth * 0.9;

                            // image
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.network(
                                item.imageUrl,
                                width: imgSize,
                                height: imgSize,
                                // display the entire image
                                fit: BoxFit.contain,
                                // handle null image
                                errorBuilder: (_, __, ___) =>
                                    const Icon(Icons.broken_image, size: 80),
                              ),
                            );
                          },
                        ),
                      ),
                      // text box for title plus ome space above it
                      const SizedBox(height: 20),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // text box for description plus some space above it
                      const SizedBox(height: 12),
                      Text(description, style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            );
          }

          // this is the layout for landscape mode, with image on left and descriptionand text on right
          return Padding(
            padding: const EdgeInsets.all(12),
            // creates horizonatal layout
            child: Row(
              children: [
                // first item is for the image which will appear on the left side
                Expanded(
                  flex: 1,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.network(
                        item.imageUrl,
                        fit: BoxFit.contain,
                        errorBuilder: (_, __, ___) =>
                            const Icon(Icons.broken_image, size: 80),
                      ),
                    ),
                  ),
                ),
                // second is for the text boxes that will appear towards the right side
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // contains 2 text boxes styled differently
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(description, style: const TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
