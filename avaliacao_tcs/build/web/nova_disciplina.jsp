<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserção de Nova Disciplina</title>
    </head>
    <body>
       <form method="post" action="disciplina_insert.jsp">
            <h1>Cadastro de Disciplinas</h1>
            <label>NOME</label><br>
            <input type="text" name="nome_disciplina" required/><br>
            <label>CARGA</label><br>
            <input type="number" name="carga" required/><br><br>
            <input type="submit" value="INSERIR"/><br>
        </form>
    </body>
</html>