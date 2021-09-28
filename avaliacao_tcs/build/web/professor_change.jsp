<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>
<%
    try{
        Professor prof = new Professor();
        DAOProfessor dprf = new DAOProfessor();
        prof.setNome(request.getParameter("nome_professor"));
        prof.setEmail(request.getParameter("email"));
        prof.setSenha(request.getParameter("senha"));
        prof.setId(Integer.parseInt(request.getParameter("id_professor")));
        dprf.atualizarProfessor(prof);
        response.sendRedirect("consultar_professor.jsp");
    }catch(Exception erro){
        throw new RuntimeException("Erro Professor Change: "+erro);
    }
%>
