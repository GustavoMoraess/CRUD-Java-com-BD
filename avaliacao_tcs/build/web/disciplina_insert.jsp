<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>
<%
    try {
        Disciplina disc = new Disciplina();
        DAODisciplina disd = new DAODisciplina();
        String nome_disciplina = request.getParameter("nome_disciplina");
        int carga = Integer.parseInt(request.getParameter("carga"));
        if(nome_disciplina.equals(null) || carga <= 0) {
            response.sendRedirect("index.jsp");
        } else {
            disc.setNome(nome_disciplina);
            disc.setCarga(carga);
            disd.InserirDisciplina(disc);
            out.print("Disciplina inserida com êxito!");
            out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
            response.sendRedirect("index.jsp");
        }
    } catch (Exception erro) {
        throw new RuntimeException("Erro Disciplina Insert: "+erro);
    }
%>