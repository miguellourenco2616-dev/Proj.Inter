public class Avaliacao {
    private int id;
    private String comentario;
    private int notaCliente;
    private int notaEntregador;
    private int tempoEntrega;
    
    public Avaliacao(){
        id = 0;
        comentario = "";
        notaCliente = 0;
        notaEntregador = 0;
        tempoEntrega = 0;
    }

    public Avaliacao(int id, String comentario, int notaCliente, int notaEntregador, int tempoEntrega) {
        this.id = id;
        this.comentario = comentario;
        this.notaCliente = notaCliente;
        this.notaEntregador = notaEntregador;
        this.tempoEntrega = tempoEntrega;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public int getNotaCliente() {
        return notaCliente;
    }

    public void setNotaCliente(int notaCliente) {
        this.notaCliente = notaCliente;
    }

    public int getNotaEntregador() {
        return notaEntregador;
    }

    public void setNotaEntregador(int notaEntregador) {
        this.notaEntregador = notaEntregador;
    }

    public int getTempoEntrega() {
        return tempoEntrega;
    }

    public void setTempoEntrega(int tempoEntrega) {
        this.tempoEntrega = tempoEntrega;
    }

}
