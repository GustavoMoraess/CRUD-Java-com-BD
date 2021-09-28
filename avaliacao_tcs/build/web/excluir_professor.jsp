<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tem certeza? Confirmar Exclusão?</h1>
        <form method = "post" action = "professor_delete.jsp">
            <label for="id">ID</label> <br>
            <input type = "text" name = "id_professor" value="<%=request.getParameter("id_professor")%>" readonly/>  <br>
            <label for="nome">NOME</label> <br>
            <input type = "text" name = "nome_professor" value="<%=request.getParameter("nome_professor")%>" readonly/> <br>
            <input type ="submit" value="EXCLUIR"/>
        </form>
    </body>
</html>
