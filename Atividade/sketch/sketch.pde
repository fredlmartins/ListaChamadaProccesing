import java.util.List;

Professor p = new Professor("Alisson", "Java");
List<Aluno> listaAlunos = new ArrayList<Aluno>();

void setup(){
  size(800, 600);
  
  p.setPosicao(300, 500);
  
  listaAlunos.add(new Aluno("Fred",  "INFO4", 1));
  listaAlunos.add(new Aluno("Lucas",  "INFO4", 2));
  listaAlunos.add(new Aluno("Ana",  "INFO4", 3));
  listaAlunos.add(new Aluno("Valdemir",  "INFO4", 4));
  listaAlunos.add(new Aluno("Bruno", "INFO4", 5));
  listaAlunos.add(new Aluno("Natalia", "INFO4", 6));
  
  listaAlunos.get(0).setPosicao(100, 200);
  listaAlunos.get(1).setPosicao(200, 200);
  listaAlunos.get(2).setPosicao(300, 200);
  listaAlunos.get(3).setPosicao(400, 200);
  listaAlunos.get(4).setPosicao(500, 200);
  listaAlunos.get(5).setPosicao(600, 200);

}

void mousePressed(){
  for(Aluno a: listaAlunos){
    if(a.intersecta(mouseX, mouseY)){
      a.mudaPresenca();
    }
  }
}

void draw(){
  for(Aluno a: listaAlunos){
    a.desenha();
  }
  
  p.desenha();
}
