<html>
    <head>
        <link rel="stylesheet" href="StyInsert.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 id="h">Insert</h1>



        <form id="fromadd" method="post" action="index.jsp">
            <div id="id"><h3>Id</h3></div>  
            <input id="inputid" name="txtid">

            <div id="firstname"><h3>First Name</h3></div>  
            <input id="inputfirstname" name="txtfname"  >
            <div id="lastname"><h3>Last Name</h3></div>  
            <input id="inputlastname" name="txtlname" >

            <div id="email"><h3>E-mail</h3></div>  
            <input id="inputemail" name="txtemail" >
            <div id="phone"><h3>Phone Number</h3></div>  
            <input id="inputphone" name="txtphone" >

            <div id="salary"><h3>Salary</h3></div>  
            <input id="inputsalary" name="txtsalary" >

            <button id="btnadd" type="submit">Add</button>
            <input type="hidden" value="1" name="code">
        </form>

        <form  method="post" action="index.jsp">
            <button id="btnback" type="submit">Back</button>
        </form>
    </body>
</html>

