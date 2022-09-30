class Escola{
  final String nome;
  final String url;

  Escola(this.nome,  this.url);

  @override
  String toString() {
    // TODO: implement toString
    return 'Concurso:{titulo:$nome,url:$url}';
  }
}