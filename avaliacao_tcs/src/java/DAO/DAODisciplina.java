package DAO;

import MODEL.Disciplina;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAODisciplina {

    private Connection cnc;
    private PreparedStatement prst;
    private Statement stm;
    private ResultSet resset;
    private ArrayList<Disciplina> lista = new ArrayList<>();

    public DAODisciplina() {
        cnc = new Conexao().getConexao();
    }

    public void InserirDisciplina(Disciplina disciplina) {
        try {
            String sql = "INSERT INTO tb_disciplina (nome_disciplina, cargahoraria_disciplina) VALUES (?,?)";
            prst=cnc.prepareStatement(sql);
            prst.setString(1, disciplina.getNome());
            prst.setInt(2, disciplina.getCarga());
            prst.execute();
            prst.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro Inserir Disciplina: " + erro);
        }
    }

    public ArrayList<Disciplina> listarDisciplinas() {
        try {
            String sql = "SELECT * FROM tb_disciplina";
            stm = cnc.createStatement();
            resset = stm.executeQuery(sql);
            while (resset.next()) {
                Disciplina disciplina = new Disciplina();
                disciplina.setId(resset.getInt("id_disciplina"));
                disciplina.setNome(resset.getString("nome_disciplina"));
                disciplina.setCarga(resset.getInt("cargahoraria_disciplina"));
                lista.add(disciplina);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro ao Listar Disciplinas: " + erro);
        }
        return lista;
    }

    public ArrayList<Disciplina> listarDisciplinasNome(String num) {
        try {
            String sql = "SELECT * FROM tb_disciplina WHERE nome_disciplina like '%"+num+"%'";
            stm = cnc.createStatement();
            resset = stm.executeQuery(sql);
            while (resset.next()) {
                Disciplina disciplina = new Disciplina();
                disciplina.setId(resset.getInt("id_disciplina"));
                disciplina.setNome(resset.getString("nome_disciplina"));
                disciplina.setCarga(resset.getInt("cargahoraria_disciplina"));
                lista.add(disciplina);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro no Listar Disciplinas: " + erro);
        }
        return lista;
    }

    public void atualizarDisciplinas(Disciplina disciplina) {
        try {
            String sql = "UPDATE tb_disciplina SET nome_disciplina = ?, cargahoraria_disciplina = ? "
                    + "WHERE id_disciplina = ?";
            prst = cnc.prepareStatement(sql);
            prst.setString(1, disciplina.getNome());
            prst.setInt(2, disciplina.getCarga());
            prst.setInt(3, disciplina.getId());
            prst.execute();
            prst.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro ao Atualizar Disciplinas " + erro);
        }
    }

    public void excluirDisciplina(int num) {
        try {
            String sql = "DELETE FROM tb_disciplina WHERE id_disciplina = " + num;
            stm = cnc.createStatement();
            stm.execute(sql);
            stm.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro ao Excluir Disciplinas: " + erro);
        }
    }
}
