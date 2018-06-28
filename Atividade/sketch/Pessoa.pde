class Pessoa implements Forma{
  String Nome;
  int x, y;
  final int tam = 25;
  
  void mudaCor(){
  }
  
  
  Pessoa(String Nome){
    this.Nome = Nome;
  }
  
  @Override
  void desenha(){
    fill (127);
    mudaCor();
    triangle(x, y, x + tam, y + tam*2, x - tam, y + tam*2);
    ellipse(x, y, tam, tam);
  }
  
  @Override
  void setPosicao(int x, int y){
    this.x = x;
    this.y= y;
  }
  
  @Override
  int getPosicaoX(){
    return x;
  }
  
  @Override
  int getPosicaoY(){
    return y;
  }
  
  @Override
  boolean intersecta(int x, int y){
    return ((x <= this.x + tam*2 && x >= this.x - tam*2) && (y <= this.y + tam*2 && y >= this.y - tam*2));
  }
}
