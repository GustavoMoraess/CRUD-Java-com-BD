<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consultar Disciplinas</h1><br>
        <form action="consultar_disciplina.jsp">
            <label>Pesquisar por nome</label>
            <input type="text" name="nome_disciplina" /><br>
            <input type="submit" value="Pesquisar"/>    
        </form> <br>
        <%
            out.print("<table border='1'>");
            out.print("<tr>");
            out.print("<th>ID</th>");
            out.print("<th>NOME</th>");
            out.print("<th>CARGA</th>");
            out.print("<th>EDITAR</th>");
            out.print("<th>EXCLUIR</th>");
            out.print("</tr>");
            DAODisciplina disd = new DAODisciplina();
            if (request.getParameter("nome_disciplina") == "" || request.getParameter("nome_disciplina") == null) {
                ArrayList<Disciplina> lista = disd.listarDisciplinas();
                for (int i = 0; i < lista.size(); i++) {
                    out.print("<tr>");
                    out.print("<td>" + lista.get(i).getId() + "</td>");
                    out.print("<td>" + lista.get(i).getNome() + "</td>");
                    out.print("<td>" + lista.get(i).getCarga() + "</td>");
                    out.print("<td><a href='alterar_disciplina.jsp?id_disciplina="
                            + lista.get(i).getId()
                            + "&nome_disciplina=" + lista.get(i).getNome()
                            + "&carga=" + lista.get(i).getCarga()
                            + "'>CLIQUE</a></td>");
                    out.print("<td><a href='excluir_disciplina.jsp?id_disciplina="
                            + lista.get(i).getId()
                            + "&nome_disciplina=" + lista.get(i).getNome()
                            + "&carga=" + lista.get(i).getCarga()
                            + "'>CLIQUE</a></td>");
                    out.print("</tr>");
                }
            } else {
                ArrayList<Disciplina> lista = disd.listarDisciplinasNome(request.getParameter("nome_disciplina"));
                for (int i = 0; i < lista.size(); i++) {
                    out.print("<tr>");
                    out.print("<td>" + lista.get(i).getId() + "</td>");
                    out.print("<td>" + lista.get(i).getNome() + "</td>");
                    out.print("<td>" + lista.get(i).getCarga() + "</td>");
                    out.print("<td><a href='alterar_disciplina.jsp?id_disciplina="
                            + lista.get(i).getId()
                            + "&nome_disciplina=" + lista.get(i).getNome()
                            + "&carga=" + lista.get(i).getCarga()
                            + "'>CLIQUE</a></td>");
                    out.print("<td><a href='excluir_disciplina.jsp?id_disciplina="
                            + lista.get(i).getId()
                            + "&nome_disciplina=" + lista.get(i).getNome()
                            + "&carga=" + lista.get(i).getCarga()
                            + "'>CLIQUE</a><td>");
                    out.print("</tr>");
                }
            }
            out.print("</table>");
        %>
    </body>
</html>