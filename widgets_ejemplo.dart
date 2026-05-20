// Angelo Joel Vera Bravo
// 5to A
//tipos de widgets

// 1. StatelessWidget: Es un widget que no tiene estado mutable. 
//Se utiliza para crear interfaces de usuario que no cambian después de ser construidas. 

class MiWidgetSinEstado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Este es un widget sin estado');
  }
}

// 2. StatefulWidget: Es un widget que tiene estado mutable. 
//Se utiliza para crear interfaces de usuario que pueden cambiar 
//dinámicamente en respuesta a eventos o interacciones del usuario.  

class MiWidgetConEstado extends StatefulWidget {
  @override
  _MiWidgetConEstadoState createState() => _MiWidgetConEstadoState();
}

// 3. Text: Es un widget que se utiliza para mostrar texto en la pantalla. 
//Permite personalizar el estilo, tamaño y color del texto. 

Text(
  '¡Hola, Flutter!',
  style: TextStyle(fontSize: 24, color: Colors.blue),
)

// 4. Image: Es un widget que se utiliza para mostrar imágenes en la pantalla. 
//Puede cargar imágenes desde la red, desde archivos locales o desde 
//recursos de la aplicación. 

Image.network(
  'https://example.com/imagen.jpg',
  width: 200,
  height: 200,
)

// 5. Button: Es un widget que se utiliza para crear botones interactivos. 
//Permite definir una función que se ejecutará cuando el botón sea presionado.  

ElevatedButton(
  onPressed: () {
    print('Botón presionado');
  },
  child: Text('Presióname'),
)

// 6. Card: Es un widget que se utiliza para crear tarjetas con contenido estructurado. 
//Permite agregar sombra, bordes redondeados y otros estilos para resaltar el contenido. 

Card(
  elevation: 4, // Sombra de la tarjeta
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  child: Padding(
    padding: EdgeInsets.all(16), // Espaciado interno de la tarjeta

 // 7. ListView: Es un widget que se utiliza para crear listas desplazables de elementos.
 // Permite mostrar una gran cantidad de datos de manera eficiente. 

ListView(
  children: [
    ListTile(
      leading: Icon(Icons.person),
      title: Text('Usuario 1'),
      subtitle: Text('Estado disponible'),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        print('Tocaste al usuario 1');
      },
    ),
    ListTile(
      leading: Icon(Icons.person),
      title: Text('Usuario 2'),
      subtitle: Text('Estado ocupado'),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        print('Tocaste al usuario 2');
      },
    ),
    // Agrega más ListTile según sea necesario
  ],

  // 8. Container: Es un widget que se utiliza para crear un contenedor con 
  //propiedades de diseño personalizables, como color, tamaño, bordes y sombras. 

Container(
  width: 200,
  height: 100,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 4,
        offset: Offset(0, 2),
      ),
    ],
  ),

  // 9. Scaffold: Es un widget que proporciona una estructura básica para la aplicación, 
  //incluyendo una barra de aplicaciones, un cuerpo y un cajón de navegación.  

Scaffold(
  appBar: AppBar(
    title: Text('Mi Aplicación Flutter'),
  ),
  body: Center(
    child: Text('¡Bienvenido a Flutter!'),
  ),
  drawer: Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('Menú de Navegación', style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Inicio'),
          onTap: () {
            print('Navegando a Inicio');
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configuración'),
          onTap: () {
            print('Navegando a Configuración');
          },
        ),
      ],
    ),
  ),

  // 10. Icon: Es un widget que se utiliza para mostrar iconos en la pantalla. 
  //Flutter proporciona una amplia variedad de iconos predefinidos a través 
  //de la clase Icons. 

Icon(
  Icons.favorite,
  color: Colors.red,
  size: 48,
)

// 11. TextField: Es un widget que se utiliza para crear campos de texto donde 
//los usuarios pueden ingresar información. Permite personalizar el estilo, 
//el tipo de teclado y la validación de entrada. 

TextField(
  decoration: InputDecoration(
    labelText: 'Nombre',
    border: OutlineInputBorder(),
  ),
  onChanged: (value) {
    print('El nombre ingresado es: $value');
  },
)

// 12. AppBar: Es un widget que se utiliza para crear una barra de aplicaciones 
//en la parte superior de la pantalla. Permite agregar un título, acciones y un 
//botón de navegación. 

AppBar(
  title: Text('Mi Aplicación'),
  backgroundColor: Colors.blue,
  actions: [
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        print('Botón de búsqueda presionado');
      },
    ),
  ],
)

// 13. BottomNavigationBar: Es un widget que se utiliza para crear una barra de 
//navegación en la parte inferior de la pantalla. Permite agregar elementos de 
//navegación y manejar la selección de cada elemento. 

BottomNavigationBar(
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
  ],
  currentIndex: 0, // Índice del elemento seleccionado
  onTap: (index) {
    print('Seleccionaste el elemento $index');
  },
)

// 14. FloatingActionButton: Es un widget que se utiliza para crear un botón 
//de acción flotante, que generalmente se utiliza para acciones principales 
//en la aplicación. 

FloatingActionButton(
  onPressed: () {
    print('Botón de acción flotante presionado');
  },
  child: Icon(Icons.add),
  backgroundColor: Colors.blue,
)

// 15. Column: Es un widget que se utiliza para organizar otros widgets en una 
//columna vertical. Permite alinear y distribuir los widgets de manera flexible. 

Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Elemento 1'),
    Text('Elemento 2'),
    Text('Elemento 3'),
  ],
)

// 16. Row: Es un widget que se utiliza para organizar otros widgets en una fila 
//horizontal. Permite alinear y distribuir los widgets de manera flexible. 

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Elemento A'),
    SizedBox(width: 20), // Espacio entre los elementos
    Text('Elemento B'),
    SizedBox(width: 20), // Espacio entre los elementos
    Text('Elemento C'),
  ],

  // 17. GridView: Es un widget que se utiliza para crear una cuadrícula de elementos. 
  //Permite organizar los widgets en filas y columnas, y es útil para mostrar una gran 
  //cantidad de elementos de manera eficiente. 
  GridView.count(
    crossAxisCount: 2,
    children: [
      Card(child: Text('Elemento 1')),
      Card(child: Text('Elemento 2')),
      Card(child: Text('Elemento 3')),
      Card(child: Text('Elemento 4')),
    ],
  ),
)

// 18. PageView: Es un widget que se utiliza para crear una vista de páginas desplazables. 
//Permite mostrar diferentes páginas de contenido que el usuario puede deslizar horizontalmente. 

PageView(
  children: [
    Container(color: Colors.red, child: Center(child: Text('Página 1'))),
    Container(color: Colors.green, child: Center(child: Text('Página 2'))),
    Container(color: Colors.blue, child: Center(child: Text('Página 3'))),
  ],
) 





// 19. Drawer: Es un widget que se utiliza para crear un cajón de navegación lateral. 
//Permite agregar elementos de navegación y mostrar contenido adicional cuando el 
//usuario desliza desde el borde de la pantalla o toca un botón de menú. 

Drawer(
  child: ListView(
    children: [
      DrawerHeader(
        decoration: BoxDecoration(color: Colors.blue),
        child: Text('Menú de Navegación', style: TextStyle(color: Colors.white, fontSize: 24)),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Inicio'),
        onTap: () {
          print('Navegando a Inicio');
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Configuración'),
        onTap: () {
          print('Navegando a Configuración');
        },
      ),
    ],
  ),

// 20. ListTile: Es un widget que se utiliza para crear elementos de lista con un diseño 
//predefinido. Permite agregar un icono, un título, un subtítulo y una acción al tocar 
//el elemento. 

ListTile(
  leading: Icon(Icons.person),
  title: Text('Usuario 1'),
  subtitle: Text('Estado disponible'),
  trailing: Icon(Icons.arrow_forward_ios),
  onTap: () {

    print('Tocaste al usuario 1');
  }

  // Agrega más ListTile según sea necesario