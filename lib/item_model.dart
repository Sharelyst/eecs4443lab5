/// Data model for a single item in the list and detail screens.
class Item {
  final String title;
  final String imageUrl;
  final String description;
  final String summary; // brief summary used only on the list screen

  const Item({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.summary,
  });
}

/// Hardcoded list of at least 15 items.
/// These can represent anything (e.g., places, books, courses, etc.).
const List<Item> sampleItems = [
  Item(
    title: 'Banana',
    imageUrl: 'https://picsum.photos/seed/flutter1/400/300',
    summary: 'Eat a Banana',
    description:
        'Just a Banana, nothing else.',
  ),
  Item(
    title: 'Apple',
    imageUrl: 'https://picsum.photos/seed/state2/400/300',
    summary: 'Eat a Apple',
    description:
        'Just an apple, nothing else.',
  ),
  Item(
    title: 'Orange',
    imageUrl: 'https://picsum.photos/seed/nav3/400/300',
    summary: 'Eat a Orange',
    description:
        'Just an Orange, nothing else.',
  ),
  Item(
    title: 'Pineapple',
    imageUrl: 'https://picsum.photos/seed/list4/400/300',
    summary: 'Eat a Pineapple',
    description:
        'Just a Pineapple, nothing else.',
  ),
  Item(
    title: 'Tomato',
    imageUrl: 'https://picsum.photos/seed/card5/400/300',
    summary: 'Eat a Tomato',
    description:
        'Testing long strings: Just a tomato, nothing else. Just a tomato, nothing else. Just a tomato, nothing else. Just a tomato, nothing else. Just a tomato, nothing else. Just a tomato, nothing else. Just a tomato, nothing else. Just a tomato, nothing else. Just a tomato, nothing else. Just a tomato, nothing else.',
  ),
  Item(
    title: 'Something',
    imageUrl: 'https://picsum.photos/seed/image6/400/300',
    summary: 'Something we need for everyday live',
    description:
        'Out of ideas already.',
  ),
  Item(
    title: 'Pencils',
    imageUrl: 'https://picsum.photos/seed/responsive7/400/300',
    summary: 'Need Pencils to write on paper',
    description:
        'why is there an image of a pencil here you ask? Well, first of all, there is not, and secondly, I dont know.',
  ),
  Item(
    title: 'Sky',
    imageUrl: 'https://picsum.photos/seed/theme8/400/300',
    summary: 'The Sky is so nice to see',
    description:
        'Blue sky.',
  ),
  Item(
    title: 'Clouds',
    imageUrl: 'https://picsum.photos/seed/gestures9/400/300',
    summary: 'A wonderful sight to see Clouds',
    description:
        'This cloud is very cool (just imagine there is a cloud here and not a placeholder image).',
  ),
  Item(
    title: 'Grass',
    imageUrl: 'https://picsum.photos/seed/forms10/400/300',
    summary: 'Grass is green',
    description:
        'Please touch some grass...',
  ),
  Item(
    title: 'River',
    imageUrl: 'https://picsum.photos/seed/network11/400/300',
    summary: 'River provides water',
    description:
        'river....',
  ),
  Item(
    title: 'Grapes',
    imageUrl: 'https://picsum.photos/seed/perf12/400/300',
    summary: 'Grapes to eat',
    description:
        'I guess we going back to fruits now.',
  ),
  Item(
    title: 'Mango',
    imageUrl: 'https://picsum.photos/seed/access13/400/300',
    summary: 'Mango to eat',
    description:
        'Best fruit after lemons.',
  ),
  Item(
    title: 'Animations',
    imageUrl: 'https://picsum.photos/seed/anim14/400/300',
    summary: 'Add subtle motion to improve user experience.',
    description:
        'Animations can guide user attention and make your app feel more polished. Flutter offers '
        'implicit animations like AnimatedContainer as well as explicit animations using AnimationController '
        'and Tween, providing fine-grained control.',
  ),
  Item(
    title: 'Testing Flutter Apps',
    imageUrl: 'https://picsum.photos/seed/test15/400/300',
    summary: 'Write widget tests to keep your UI reliable.',
    description:
        'Testing in Flutter includes unit tests, widget tests, and integration tests. '
        'Widget tests help you ensure that your UI behaves as expected when given specific inputs, '
        'improving reliability as your codebase grows.',
  ),
];
