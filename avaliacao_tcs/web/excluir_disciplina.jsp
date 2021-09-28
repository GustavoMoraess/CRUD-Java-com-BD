<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tem certeza? Confirmar Exclusão?</h1>
        <form method = "post" action = "disciplina_delete.jsp">
            <label for="id_disciplina">ID</label> <br>
            <input type = "text" name = "id_disciplina" value="<%=request.getParameter("id_disciplina")%>" readonly/>  <br>
            <label for="nome_disciplina">NOME</label> <br>
            <input type = "text" name = "nome_disciplina" value="<%=request.getParameter("nome_disciplina")%>" readonly/> <br>
            <input type ="submit" value="EXCLUIR"/>
        </form>
    </body>
</html>
