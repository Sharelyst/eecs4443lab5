import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'item_model.dart';

class ListScreen extends StatelessWidget {
  final List<Item> items;

  const ListScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EECS 4443 Lab 5'), centerTitle: true),

      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

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

class ItemCard extends StatelessWidget {
  final Item item;
  final VoidCallback onTap;

  const ItemCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final title = (item.title?.isEmpty ?? true)
        ? "No title available"
        : item.title!;
    final summary = (item.summary?.isEmpty ?? true)
        ? "No summary available."
        : item.summary!;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        onTap: onTap,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: Image.network(
            item.imageUrl ?? "",
            width: 60,
            height: 60,
            fit: BoxFit.contain,
            errorBuilder: (_, __, ___) =>
                const Icon(Icons.broken_image_rounded, size: 60),
          ),
        ),
        title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
        subtitle: Text(summary, maxLines: 2, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
