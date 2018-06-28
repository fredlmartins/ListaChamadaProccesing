interface Forma{
  void desenha();
  
  void setPosicao(int x, int y);
  
  int getPosicaoX();
  int getPosicaoY();
  
  boolean intersecta(int x, int y);
}
