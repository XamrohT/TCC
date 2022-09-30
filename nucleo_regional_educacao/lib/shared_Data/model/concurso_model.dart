class Concurso{
  final String titulo;
  final String data;
  final String url;

  Concurso(this.titulo, this.data, this.url);

  @override
  String toString() {
    // TODO: implement toString
    return 'Concurso:{titulo:$titulo,data:$data,url:$url}';
  }
}