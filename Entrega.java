public class Entrega {
    private int id;
    private String logradouro;
    private String status;
    private double valor;
    private String dataHoraSaida;
    private String nome;

    public Entrega(){
        id = 0;
        logradouro = "";
        status = "";
        valor = 0;
        dataHoraSaida = "";
        nome = "";
    }

    public Entrega(int id, String logradouro, String status, double valor, String dataHoraSaida, String nome) {
        this.id = id;
        this.logradouro = logradouro;
        this.status = status;
        this.valor = valor;
        this.dataHoraSaida = dataHoraSaida;
        this.nome = nome;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public String getDataHoraSaida() {
        return dataHoraSaida;
    }

    public void setDataHoraSaida(String dataHoraSaida) {
        this.dataHoraSaida = dataHoraSaida;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

}
