<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserção de Novo Professor</title>
    </head>
    <body>
        <form method = "post" action = "professor_insert.jsp">
            <h1>Cadastro de Professores</h1>
            <label>NOME</label><br>
            <input type = "text" name = "nome_professor" required/><br>
            <label>EMAIL</label><br>
            <input type = "text" name = "email" required/><br><br>
            <label>SENHA</label><br>
            <input type = "text" name = "senha" required/><br><br>
            <input type = "submit" value = "INSERIR"/><br>
        </form>
    </body>
</html>
