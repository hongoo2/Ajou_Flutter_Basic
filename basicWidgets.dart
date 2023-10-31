//Text
Text(
  'Hello, Flutter!',
  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  textAlign: TextAlign.center,
)


//Image
Image.network('https://example.com/your-image-url.jpg')


//Icon
Icon(Icons.star, size: 30, color: Colors.blue)


//SizedBox
Icon(Icons.star, size: 30, color: Colors.yellow)


//Container
Container(
  padding: EdgeInsets.all(10),
  color: Colors.blue,
  child: Text('This is Container', style: TextStyle(color: Colors.red)),
)

//List
List<String> fruits = ['Apple', 'Banana', 'Cherry'];


//ListView
ListView(
  children: <Widget>[
    ListTile(title: Text('Paldal')),
    ListTile(title: Text('Dasan')),
    ListTile(title: Text('Yulgok')),
  ],
)



//ListTile
ListTile(
  leading: Icon(Icons.star),
  title: Text('ListTile Title'),
  subtitle: Text('Subtitle here'),
  trailing: Icon(Icons.arrow_forward),
)
