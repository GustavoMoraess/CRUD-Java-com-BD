<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>
<%
    try {
        Professor prof = new Professor();
        DAOProfessor dprf = new DAOProfessor();
        String nome_professor = request.getParameter("nome_professor");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        if (nome_professor.equals(null) || email.equals(null) || senha.equals(null)) {
            response.sendRedirect("index.jsp");
        } else {
            prof.setNome(nome_professor);
            prof.setEmail(email);
            prof.setSenha(senha);
            dprf.InserirProfessor(prof);
            out.print("Professor inserido com êxito!");
            out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
            response.sendRedirect("index.jsp");
        }
    } catch (Exception erro) {
        throw new RuntimeException("Erro Professor Insert: ", erro);
    }
%>