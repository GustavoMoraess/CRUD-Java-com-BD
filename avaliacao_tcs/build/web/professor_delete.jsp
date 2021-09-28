<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProfessor"%>
<%
    try{
        DAOProfessor dprf = new DAOProfessor();
        dprf.excluirProfessor(Integer.parseInt(request.getParameter("id_professor")));
        out.print("Professor Excluído com Êxito!");
        out.print("<meta http-equiv='refresh' content='3, url=consultar_professor.jsp'>");
    }catch(Exception erro){
        throw new RuntimeException("Erro Professor Delete: "+erro);
    }
%>
