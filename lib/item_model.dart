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
    title: 'Flutter Basics',
    imageUrl: 'https://picsum.photos/seed/flutter1/400/300',
    summary: 'Learn how Flutter builds UIs using widgets and trees.',
    description:
        'Flutter is Google’s UI toolkit for building beautiful, natively compiled '
        'applications for mobile, web, and desktop from a single codebase. '
        'In this topic we cover the basic widget tree, hot reload, and how to structure '
        'a simple app using MaterialApp, Scaffold, and common widgets.',
  ),
  Item(
    title: 'State Management',
    imageUrl: 'https://picsum.photos/seed/state2/400/300',
    summary: 'Understand how widgets store and update state.',
    description:
        'State management in Flutter refers to how you store and update data that affects '
        'your UI. You will learn the difference between StatelessWidget and StatefulWidget, '
        'when to rebuild parts of the tree, and how setState triggers UI updates.',
  ),
  Item(
    title: 'Navigation & Routes',
    imageUrl: 'https://picsum.photos/seed/nav3/400/300',
    summary: 'Use Navigator.push and Navigator.pop for screen transitions.',
    description:
        'Flutter’s Navigator API lets you build stacks of screens (routes) and move between '
        'them. Using Navigator.push, you can go to a new screen and pass arguments such as '
        'an Item object. Using Navigator.pop, you can return to the previous screen, giving '
        'users a natural navigation flow.',
  ),
  Item(
    title: 'ListView.builder',
    imageUrl: 'https://picsum.photos/seed/list4/400/300',
    summary: 'Efficiently render long, scrollable lists.',
    description:
        'ListView.builder is a powerful way to build large or infinite scrolling lists lazily. '
        'It only builds the visible children, which improves performance. You provide an itemCount '
        'and an itemBuilder to describe how each row should look.',
  ),
  Item(
    title: 'Cards & Layout',
    imageUrl: 'https://picsum.photos/seed/card5/400/300',
    summary: 'Organize visual information using Card, Row, and Column.',
    description:
        'Cards are used to group related content together with a slight elevation and rounded '
        'corners. Combined with Row, Column, Padding, and SizedBox, you can design clean, '
        'readable UI sections that adapt to different screen sizes.',
  ),
  Item(
    title: 'Images in Flutter',
    imageUrl: 'https://picsum.photos/seed/image6/400/300',
    summary: 'Display images from the network with graceful error handling.',
    description:
        'Flutter can display images from assets and from the network. Using Image.network, '
        'you can load remote images. It is good practice to provide an errorBuilder to show '
        'a placeholder icon if the image fails to load.',
  ),
  Item(
    title: 'Responsive Design',
    imageUrl: 'https://picsum.photos/seed/responsive7/400/300',
    summary: 'Make your UI work in portrait and landscape.',
    description:
        'Responsive design means your layout adapts to different screen sizes and orientations. '
        'Using Flexible, Expanded, LayoutBuilder, and MediaQuery, you can keep your UI usable and '
        'readable on phones and tablets, in portrait or landscape.',
  ),
  Item(
    title: 'Theming & Styles',
    imageUrl: 'https://picsum.photos/seed/theme8/400/300',
    summary: 'Use ThemeData and TextTheme for consistency.',
    description:
        'Theming allows you to define global styles such as colors, fonts, and text sizes. '
        'By using Theme.of(context) and TextTheme, your app stays visually consistent and easier '
        'to maintain, even as it grows.',
  ),
  Item(
    title: 'Input & Gestures',
    imageUrl: 'https://picsum.photos/seed/gestures9/400/300',
    summary: 'Handle taps and gestures with InkWell and GestureDetector.',
    description:
        'User interaction is a key part of mobile apps. Flutter provides InkWell and GestureDetector '
        'for listening to taps, long presses, and more. Wrapping your widgets with these makes '
        'them interactive and provides visual feedback like ripples.',
  ),
  Item(
    title: 'Forms & Validation',
    imageUrl: 'https://picsum.photos/seed/forms10/400/300',
    summary: 'Collect and validate user input with Form widgets.',
    description:
        'Flutter forms use Form, TextFormField, and validation functions to collect user input '
        'safely. Validation ensures users provide correct data before proceeding, which improves '
        'the overall user experience and reduces errors.',
  ),
  Item(
    title: 'Networking Basics',
    imageUrl: 'https://picsum.photos/seed/network11/400/300',
    summary: 'Fetch data from APIs using http or other packages.',
    description:
        'Networking in Flutter often uses the http package to send GET or POST requests. '
        'You parse JSON responses into Dart models and then rebuild widgets with the new data. '
        'Although this lab uses hardcoded data, the same model structure can be reused for APIs.',
  ),
  Item(
    title: 'Performance Tips',
    imageUrl: 'https://picsum.photos/seed/perf12/400/300',
    summary: 'Use const constructors and avoid unnecessary rebuilds.',
    description:
        'Performance optimization in Flutter includes using const constructors where possible, '
        'avoiding expensive work in build methods, and using efficient widgets like ListView.builder. '
        'Profiling tools can also help identify bottlenecks.',
  ),
  Item(
    title: 'Accessibility',
    imageUrl: 'https://picsum.photos/seed/access13/400/300',
    summary: 'Make apps usable by everyone, including screen readers.',
    description:
        'Accessibility involves adding semantic labels, proper contrast, and meaningful navigation. '
        'Flutter supports screen readers and other assistive technologies, helping you build apps that '
        'are inclusive for more users.',
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
