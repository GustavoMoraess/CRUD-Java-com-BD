package MODEL;
public class Professor {
    private int id_professor;
    private String nome_professor;
    private String email;
    private String senha;

    public int getId() {
        return id_professor;
    }

    public void setId(int id_professor) {
        this.id_professor = id_professor;
    }

    public String getNome() {
        return nome_professor;
    }

    public void setNome(String nome_professor) {
        this.nome_professor = nome_professor;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
}
