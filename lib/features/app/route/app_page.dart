enum AppPage {
  notes('/notes', '/notes'),
  addNote('/add', '/notes/add'),
  // TODO: add edit note route
  // editNote('/edit/:id', '/notes/edit/:id'),
  ;

  final String path;
  final String fullPath;

  String get name => fullPath;

  const AppPage(this.path, this.fullPath);
}
