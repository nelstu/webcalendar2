<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="java.util.*"%>



<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="icon" href="data:;base64,iVBORw0KGgo=">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            table {

                table-layout: fixed;
                width: 800px;
            }

            th,
            td {

                width: 150px;
                height: 80px;
                overflow: hidden;
            }

            P {
                color: rgb(247, 243, 243);
                font-size: 10px;
                font-family: Courier;
                border: 2px;
                border-color: rgb(197, 23, 23);
                border-style: solid;
                width: 150px;
                height: 100px;

                background: rgb(38, 55, 201);
            }
        </style>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>Hora</th>
                    <th>Sala 1</th>
                    <th>Sala 2</th>
                    <th>Sala 3</th>
                    <th>Sala 4</th>
                </tr>
            </thead>
            <tbody>


                <%
                try{
                 String conexion="jdbc:mysql://192.168.64.2:3306/Agenda";
                 Connection connection=null;
                 Class.forName("com.mysql.jdbc.Driver").newInstance();
                 connection=DriverManager.getConnection(conexion,"web","calendario");
                 Statement stmt=connection.createStatement();
                 ResultSet rset;
                String sql ="select * FROM matriz";
                String desde="";
                String hora="";
                rset = stmt.executeQuery(sql);
                String isala1="";String isala2="";String isala3="";String isala4="";
                while(rset.next()){
                   hora=rset.getString("hora") ;
                   try{
                      Statement stmt1=connection.createStatement();
                      ResultSet rset1;
                      String s1="select * FROM agenda WHERE sala='sala1' AND desde='"+hora+"'";
                      rset1 = stmt1.executeQuery(s1);
                      isala1="";
                      while(rset1.next()){
                         isala1="X";
                       }
                      stmt1.close();
                     } catch (Exception e1) {
                     System.out.println("Sala 1"+e1.getMessage()+isala1);
                      }
                    

                out.println("<tr>");
                out.println("<td>"+hora+"</td>");
                out.println("<td>"+isala1+"</td>");
                out.println("<td>"+isala2+"</td>");
                out.println("<td>"+isala3+"</td>");
                out.println("</tr>");
                }
                connection.close();
                } catch (Exception e) {
                   e.printStackTrace();
                }
                %>
            </tbody>
        </table>

    </body>
</html>
