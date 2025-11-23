public class Cliente extends Pessoa {
    private int estrela;

    public Cliente() {
        estrela = 0;
    }

    public Cliente(int id, String nome, String cpf, int codigo, int nr, String telefone, int estrela) {
        super(id, nome, cpf, codigo, nr, telefone);
        this.estrela = estrela;
    }

    public int getEstrela() {
        return estrela;
    }

    public void setEstrela(int estrela) {
        this.estrela = estrela;
    }
}
