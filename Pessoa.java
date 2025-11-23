public class Pessoa {
    private int id;
    private String nome;
    private String cpf;
    private int codigo;
    private int nr;
    private String telefone; 

    public Pessoa() {
        id = 0;
        nome = "";
        cpf = "";
        codigo = 0;
        nr = 0;
        telefone = "";
    }

    public Pessoa(int id, String nome, String cpf, int codigo, int nr, String telefone) {
        this.id = id;
        this.nome = nome;
        this.cpf = cpf;
        this.codigo = codigo;
        this.nr = nr;
        this.telefone = telefone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getNr() {
        return nr;
    }

    public void setNr(int nr) {
        this.nr = nr;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }    
}
