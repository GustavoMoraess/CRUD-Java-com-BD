package MODEL;

public class Disciplina {
    private int id_disciplina;
    private String nome_disciplina;
    private int carga;

    public int getId() {
        return id_disciplina;
    }

    public void setId(int id_disciplina) {
        this.id_disciplina = id_disciplina;
    }

    public String getNome() {
        return nome_disciplina;
    }

    public void setNome(String nome_disciplina) {
        this.nome_disciplina = nome_disciplina;
    }

    public int getCarga() {
        return carga;
    }

    public void setCarga(int carga) {
        this.carga = carga;
    }
    
}
