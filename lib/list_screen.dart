import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'item_model.dart';

class ListScreen extends StatelessWidget {
  // take a list of Item
  final List<Item> items;

  // constructor for this class
  const ListScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    // creating basic page layout
    return Scaffold(
      // title
      appBar: AppBar(title: const Text('EECS 4443 Lab 5'), centerTitle: true),

      // list view builder that will create a scrollable list where only visible items are built
      body: ListView.builder(
        itemCount: items.length,
        // for each item in list, return an item card
        itemBuilder: (context, index) {
          final item = items[index];

          // uses navigator api to route to detail screen with the item information; kinda like intents
          return ItemCard(
            item: item,
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

// itemcard classs
class ItemCard extends StatelessWidget {
  final Item item;
  final VoidCallback onTap;

  // constructor
  const ItemCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // handle null or empty values, of not then assign the values that have been passed to the relevant variables
    final title = (item.title?.isEmpty ?? true)
        ? "No title available"
        : item.title!;
    final summary = (item.summary?.isEmpty ?? true)
        ? "No summary available."
        : item.summary!;

    // once variables have been assigned, return the ui to display the item card
    // contains basic styling to make it more visually appealing
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      // uses listTile as mentioned inthe lab file
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        onTap: onTap,
        // box for hte image
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(0),
          // load the image from network
          child: Image.network(
            item.imageUrl ?? "",
            width: 60,
            height: 60,
            fit: BoxFit.contain,
            // handle broken images by adding a placeholder
            errorBuilder: (_, __, ___) => const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.broken_image_rounded, size: 40),
            ),
          ),
        ),
        // display title and summary
        title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
        subtitle: Text(summary, maxLines: 2, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
