<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consultar Professores</h1><br>
        <form action="consultar_professor.jsp">
            <label>Pesquisar por nome</label>
            <input type="text" name="nome_professor" /><br>
            <input type="submit" value="Pesquisar"/>    
        </form> <br>
        <%
            out.print("<table border='1'>");
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>EMAIL</th>");
                out.print("<th>SENHA</th>");
                out.print("<th>EDITAR</th>");
                out.print("<th>EXCLUIR</th>");
            out.print("</tr>");
            DAOProfessor prof = new DAOProfessor();
            if(request.getParameter("nome_professor") == "" || request.getParameter("nome_professor") == null){
                ArrayList<Professor> lista = prof.listarProfessores();
                for(int i = 0; i < lista.size(); i++) {
                    out.print("<tr>");
                    out.print("<td>"+lista.get(i).getId()+"</td>");
                    out.print("<td>"+lista.get(i).getNome()+"</td>");
                    out.print("<td>"+lista.get(i).getEmail()+"</td>");
                    out.print("<td>"+lista.get(i).getSenha()+"</td>");
                    out.print("<td><a href='alterar_professor.jsp?id_professor="
                        + lista.get(i).getId()
                        + "&nome_professor="+lista.get(i).getNome()
                        + "&email="+lista.get(i).getEmail()
                        + "&senha="+lista.get(i).getSenha()
                        +"'>CLIQUE</a></td>");
                    out.print("<td><a href='excluir_professor.jsp?id_professor="
                        + lista.get(i).getId()
                        + "&nome_professor="+lista.get(i).getNome()
                        + "&email="+lista.get(i).getEmail()
                        + "&senha="+lista.get(i).getSenha()
                        +"'>CLIQUE</a></td>");
                    out.print("</tr>");
                }
            }else{
                ArrayList<Professor> lista = prof.listarProfessoresNome(request.getParameter("nome_professor"));
                for(int i = 0; i < lista.size(); i++) {
                    out.print("<tr>");
                    out.print("<td>"+lista.get(i).getId()+"</td>");
                    out.print("<td>"+lista.get(i).getNome()+"</td>");
                    out.print("<td>"+lista.get(i).getEmail()+"</td>");
                    out.print("<td>"+lista.get(i).getSenha()+"</td>");
                    out.print("<td><a href='alterar_professor.jsp?id_professor="
                        + lista.get(i).getId()
                        + "&nome_professor="+lista.get(i).getNome()
                        + "&email="+lista.get(i).getEmail()
                        + "&senha="+lista.get(i).getSenha()
                        +"'>CLIQUE</a></td>");
                    out.print("<td><a href='excluir_professor.jsp?id_professor="
                        +lista.get(i).getId()
                        +"&nome_professor="+lista.get(i).getNome()
                        + "'>CLIQUE</a><td>");
                    out.print("</tr>");
                }
            }
            out.print("</table>");
        %>
    </body>
</html>
