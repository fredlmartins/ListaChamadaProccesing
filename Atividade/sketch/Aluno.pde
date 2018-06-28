class Aluno extends Pessoa{
  String Turma;
  char Presenca = '-';
  int NumChamada;
  
  Aluno(String Nome, String Turma, int NumChamada){
    super(Nome);
    this.Turma = Turma;
    this.NumChamada = NumChamada;
  }
  
  void mudaPresenca(){
    if(Presenca == '-'){
      Presenca = 'P';
    } else if(Presenca == 'P'){
      Presenca = 'A';
    } else if(Presenca == 'A'){
      Presenca = '-';
    }
  }
  
  @Override  
  void mudaCor(){
    if(Presenca == '-'){
      fill(127);
    } else if(Presenca == 'P'){
      fill(0, 255, 0);
    } else if(Presenca == 'A'){
      fill(255, 0, 0);
    }
  }
}
