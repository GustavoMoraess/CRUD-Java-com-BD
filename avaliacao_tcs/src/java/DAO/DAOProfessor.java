package DAO;

import MODEL.Professor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOProfessor {

    private Connection cnc;
    private PreparedStatement prst;
    private Statement stm;
    private ResultSet resset;
    private ArrayList<Professor> lista = new ArrayList<>();

    public DAOProfessor() {
        cnc = new Conexao().getConexao();
    }

    public void InserirProfessor(Professor professor) {
        try {
            String sql = "INSERT INTO tb_professor (nome_professor, email_professor, senha_professor) VALUES (?,?,?)";
            prst = cnc.prepareStatement(sql);
            prst.setString(1, professor.getNome());
            prst.setString(2, professor.getEmail());
            prst.setString(3, professor.getSenha());
            prst.execute();
            prst.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro Inserir Professor: " + erro);
        }
    }

    public ArrayList<Professor> listarProfessores() {
        try {
            String sql = "SELECT * FROM tb_professor";
            stm = cnc.createStatement();
            resset = stm.executeQuery(sql);
            while (resset.next()) {
                Professor professor = new Professor();
                professor.setId(resset.getInt("id_professor"));
                professor.setNome(resset.getString("nome_professor"));
                professor.setEmail(resset.getString("email_professor"));
                professor.setSenha(resset.getString("senha_professor"));
                lista.add(professor);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro ao Listar Professores: " + erro);
        }
        return lista;
    }

    public ArrayList<Professor> listarProfessoresNome(String num) {
        try {
            String sql = "SELECT * FROM tb_professor WHERE nome_professor like '%"+num+"%'";
            stm = cnc.createStatement();
            resset = stm.executeQuery(sql);
            while (resset.next()) {
                Professor professor = new Professor();
                professor.setId(resset.getInt("id_professor"));
                professor.setNome(resset.getString("nome_professor"));
                professor.setEmail(resset.getString("email_professor"));
                professor.setSenha(resset.getString("senha_professor"));
                lista.add(professor);
            }
        } catch (SQLException erro) {
            throw new RuntimeException("Erro no Listar Professores: " + erro);
        }
        return lista;
    }

    public void atualizarProfessor(Professor professor) {
        try {
            String sql = "UPDATE tb_professor SET nome_professor = ?, email_professor = ?, senha_professor = ? "
                    + "WHERE id_professor = ?";
            prst = cnc.prepareStatement(sql);
            prst.setString(1, professor.getNome());
            prst.setString(2, professor.getEmail());
            prst.setString(3, professor.getSenha());
            prst.setInt(4, professor.getId());
            prst.execute();
            prst.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro ao Atualizar Professores " + erro);
        }
    }

    public void excluirProfessor(int num) {
        try {
            String sql = "DELETE FROM tb_professor WHERE id_professor = " + num;
            stm = cnc.createStatement();
            stm.execute(sql);
            stm.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro ao Excluir Professores: " + erro);
        }
    }
}
