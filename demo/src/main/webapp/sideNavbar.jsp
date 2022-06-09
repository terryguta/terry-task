<%--
  Created by IntelliJ IDEA.
  User: ladszim17
  Date: 3/12/2021
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.LinkedList" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>


<nav class="pcoded-navbar">
    <div class="pcoded-inner-navbar main-menu">
        <ul class="pcoded-item pcoded-left-item">

<%
        String[][][] menus = {
                {
                        {"Dashboard", "index.jsp"}
                },
                {
                        {"Resources","icon-sliders"}, {"Portal", "portal.jsp"}, {"Getting Started", "documentation.jsp"}
                },
                {
                        {"Settings","icon-settings"}, {"Register", "register.jsp"}, {"Log In", "login.jsp"}, {"Log Out", "logout.jsp"}
                }
        };%>
            <%

            for (int i =0; i<menus.length; i++){


            if (menus[i].length > 1) {
            out.print("<li class=\"pcoded-hasmenu\">\n" +
"                    <a href=\"javascript:void(0)\">\n" +
"                        \n" + "  <span class=\"pcoded-micon\"><i class=\"feather "+menus[i][0][1]+"\"></i></span>\n"+
"                        <span class=\"pcoded-mtext\">"+menus[i][0][0]+"</span>\n" +
"                    </a>");
            for (int k =1 ; k<menus[i].length; k++)
            {
                out.print("<ul class=\"pcoded-submenu\">");
                out.print("<li class=\"pcoded-hasmenu\">\n" +
                        "                            <a href=\""+menus[i][k][1]+"\">");
                out.print("<span class=\"pcoded-mtext\">"+menus[i][k][0]+"</span>\n" +
                        "                                            </a></li></ul>");
//            out.print("<li>"+menus[i][k][1]+"<li>"+"\t");
            }
            out.print("</li>");
            }
              else{
                out.print("<li class=\"active\">" +
                        "                            <a href=\""+menus[i][0][1]+"\">");
                out.print("<span class=\"pcoded-micon\">\n" +
                        "                                        <i class=\"feather icon-home\"></i>\n" +
                        "                                    </span>");
                out.print("<span class=\"pcoded-mtext\">"+menus[i][0][0]+"</span>\n" +
                        "                                            </a></li>");


//            out.print("<div class=\"pcoded-navigatio-lavel\">"+menus[i][0][0]+"</div>");
            }
            }
            %>

        </ul>
    </div>
</nav>