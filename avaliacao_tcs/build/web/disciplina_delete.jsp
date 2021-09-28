<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAODisciplina"%>
<%
    try{
        DAODisciplina disd = new DAODisciplina();
        disd.excluirDisciplina(Integer.parseInt(request.getParameter("id_disciplina")));
        out.print("Disciplina Excluída com Êxito!");
        out.print("<meta http-equiv='refresh' content='3, url=consultar_disciplina.jsp'>");
    }catch(Exception erro){
        throw new RuntimeException("Erro Disciplina Delete: "+erro);
    }
%>

