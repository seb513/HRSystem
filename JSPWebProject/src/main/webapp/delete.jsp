<%@page import="com.leapfrog.jspwebproject.dao.impl.DepartmentDAOImpl"%>
<%@page import="com.leapfrog.jspwebproject.dao.DepartmentDAO"%>
<%@page import="com.leapfrog.jspwebproject.entity.Department"%>
<%@include file="header.jsp" %>
<h1>Department</h1>

<%
    DepartmentDAO deptDAO=new DepartmentDAOImpl();
    Department d=null;
    try{
        int id=0;
        if(request.getParameter("id")==null){
            response.sendRedirect("index.jsp?error");
        }
        id=Integer.parseInt(request.getParameter("id"));
        d=deptDAO.getById(id);
        if(d==null){
            response.sendRedirect("index.jsp?error");
        }
        
    }catch(Exception e){
        
    }
%>
        
<%@include file="footer.jsp" %>