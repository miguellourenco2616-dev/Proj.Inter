public class Entregador extends Pessoa {
    private double salario;

    public Entregador(){
        salario = 0;
    }

    public Entregador(int id, String nome, String cpf, int codigo, int nr, String telefone, double salario) {
        super(id, nome, cpf, codigo, nr, telefone);
        this.salario = salario;
    }

    public double getSalario(){
        return salario;
    }
    
    public void setSalario(double salario){
        this.salario = salario;
    }
}

