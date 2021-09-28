<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>
<%
    try{
        Disciplina disc = new Disciplina();
        DAODisciplina disd = new DAODisciplina();
        disc.setNome(request.getParameter("nome_disciplina"));
        disc.setCarga(Integer.parseInt(request.getParameter("carga")));
        disc.setId(Integer.parseInt(request.getParameter("id_disciplina")));
        disd.atualizarDisciplinas(disc);
        response.sendRedirect("consultar_disciplina.jsp");
    }catch(Exception erro){
        throw new RuntimeException("Erro Disciplina Change: "+erro);
    }
%>
