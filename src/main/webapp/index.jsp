
<%@page import="com.jasin.controler.Delete"%>
<%@page import="com.jasin.model.ShowData"%>
<%@page import="com.jasin.controler.Insert"%>
<html>
    <head>
        <link rel="stylesheet" href="StyIndex.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String fname;
            String lname;
            String email;
            String phone;
            String salary;
            String id;
            String select = request.getParameter("txtselect");
            if (request.getParameter("txtfname") != null) 
            {
                fname = request.getParameter("txtfname");
                lname = request.getParameter("txtlname");
                id = request.getParameter("txtid");
                email = request.getParameter("txtemail");
                phone = request.getParameter("txtphone");
                salary = request.getParameter("txtsalary");
                
                Insert ins = new Insert();
                ins.InsertData(id, fname, lname, email, phone, Double.parseDouble(salary));
                
            }
            if(select != null){
                Delete del = new Delete();
                del.DeleteData(select);
            }
        %>
        <div id="head"><h1>Employees</h1></div>

        <form method="post" action="insert.jsp">
            <button id="btninsert">Insert</button>
        </form>
        <button id="btnupdate">Update</button>
        <label id="lasearch">Search</label>
        <input id="insearch">
        <select id="select">
            <option>name</option>
            <option>email</option>
            <option>phone</option>
            <option>salary</option>
        </select>
        <button id="btnsearch">Search</button>

        <table>
            <thead>
                <tr>
                    <td>no.</td>
                    <td>employee id</td>
                    <td>first name</td>
                    <td>last name</td>
                    <td>email</td>
                    <td>phone number</td>
                    <td>salary</td>
                    <td>show data</td>
                    <td></td>


                </tr>
            </thead>

            <tbody>
                <%            
                    ShowData sh = new ShowData();
                    sh.CreateData("", "");
                    for (int i = 0; i < sh.getId().size(); i++) {                        
                %>
                <tr>
                    <td><%=i + 1%></td>
                    <td><%=sh.getId().get(i)%></td>
                    <td><%=sh.getFirstname().get(i)%></td>
                    <td><%=sh.getLastname().get(i)%></td>
                    <td><%=sh.getEmail().get(i)%></td>
                    <td><%=sh.getPhonenumber().get(i)%></td>
                    <td><%=sh.getSalary().get(i)%></td>
                    <td>
                       <form method="post" action="index.jsp">
                
                <td><button id="btndelete">Update</button></td>
            </form>  
                    </td>
             <form method="post" action="index.jsp">
                <input type="hidden" name="txtselect" value="<%=sh.getId().get(i) %>">
                <td><button id="btndelete">Delete</button></td>
            </form>
                <tr/>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
