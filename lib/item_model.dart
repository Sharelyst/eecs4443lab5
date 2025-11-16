// Making object class Item with Item properties
class Item {
  final String title;
  final String imageUrl;
  final String description;
  final String summary;
  // Initializing Item with default values
  const Item({
    this.title = "",
    this.imageUrl = "",
    this.description = "",
    this.summary = "",
  });
}

// creating our 15 hardcoded items
final List<Item> sampleItems = [
  // first item, banana
  Item(
    title: "Banana",
    // picture of banana from getting image url from web
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Banana-Single.jpg/1162px-Banana-Single.jpg",
    description: "Just a Banana, nothing else.",
    summary: "Banana summary",
  ),
  // second item
  Item(
    title: "Apple",
    imageUrl:
        "https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w=",
    description: "Just an apple, nothing else.",
    summary: "Apple summary",
  ),
  // third item
  Item(
    title: "Orange",
    imageUrl:
        "https://media.istockphoto.com/id/185284489/photo/orange.jpg?s=612x612&w=0&k=20&c=m4EXknC74i2aYWCbjxbzZ6EtRaJkdSJNtekh4m1PspE=",
    description: "Just an Orange, nothing else.",
    summary: "",
  ),
  // fourth item
  Item(
    title: "Pineapple",
    imageUrl:
        "https://media.istockphoto.com/id/452352231/photo/pineapple.jpg?s=612x612&w=0&k=20&c=BioDwSdBPMlCpc56389y9JUsAJFGXkk5gr14R4hxikY=",
    description: "Just a Pineapple, nothing else.",
    summary: "Pineapple summary",
  ),
  // fifth item
  Item(
    title: "Tomato",
    imageUrl:
        "https://media.istockphoto.com/id/847335116/photo/tomatoes-on-the-vine.jpg?s=612x612&w=0&k=20&c=XspM2ySvUfqjnt7HL5qKyn0tyRb5qLsf1GAP6-3xQsw=",
    description:
        "Testing long strings: Just a tomato, nothing else. Just a tomato, nothing else. "
        "Just a tomato, nothing else. Just a tomato, nothing else. Just a tomato, nothing else. "
        "Just a tomato, nothing else. Just a tomato, nothing else. Just a tomato, nothing else. "
        "Just a tomato, nothing else. Just a tomato, nothing else.",
    summary: "Tomato summary",
  ),
  // sixth item
  Item(
    title: "Something",
    imageUrl:
        "https://www.shutterstock.com/image-vector/modern-handwritten-brush-calligraphy-something-260nw-1782692663.jpg",
    description: "Out of ideas already.",
    summary: "Something summary",
  ),
  // seventh item
  Item(
    title: "Pencils",
    description:
        "Why is there an image of a pencil here you ask? Well, there isn't",
    summary: "Pencils summary",
  ),
  // eighth item
  Item(
    title: "Sky",
    imageUrl:
        "https://images.pexels.com/photos/53594/blue-clouds-day-fluffy-53594.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    description: "Blue sky.",
    summary: "Sky summary",
  ),
  // ninth item
  Item(
    title: "Clouds",
    description:
        "This cloud is very cool (just imagine there is a cloud here and not a placeholder image).",
    summary: "Clouds summary",
  ),
  // tenth item
  Item(
    title: "Grass",
    imageUrl:
        "https://media.istockphoto.com/id/515011742/photo/close-up-of-fresh-thick-grass-with-water-drops.jpg?s=612x612&w=0&k=20&c=6sjw9lrB-0h_BgnSs6UeU1a9GMuBQkaQn-H_J4I8xCU=",
    description: "Please touch some grass...",
    summary: "Grass summary",
  ),
  // item 11
  Item(
    title: "River",
    imageUrl:
        "https://images.pexels.com/photos/2438/nature-forest-waves-trees.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    description: "river....",
    summary: "River summary",
  ),
  // item 12
  Item(
    title: "Grapes",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSesv836ZjZTMgiLVjdScLaHoG1NWvumZJ6Aw&s",
    description: "I guess we going back to fruits now.",
    summary: "Grapes summary",
  ),
  // item 13
  Item(
    title: "Mango",
    imageUrl:
        "https://media.istockphoto.com/id/980812590/photo/fresh-raw-mangoes.jpg?s=612x612&w=0&k=20&c=cMyKeUk3tv0r295jMTZiWLCZ_WAAsajJqR9cnafq7PA=",
    description: "Best fruit after lemons.",
    summary: "Mango summary",
  ),
  // item 14
  Item(imageUrl: "https://scx2.b-cdn.net/gfx/news/2017/theoreticala.jpg"),
  // item 15
  Item(),
];
