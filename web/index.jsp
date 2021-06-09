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
        <title>Agenda Tabla Quirurgica</title>
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
        <div style="width:1200px; padding:3px;">
            <div style="width:800px;  float:left;">
                Fecha <input type="date" name="fechasearch"/><button>Consultar</button>
                <table border="1" id="Agenda">
                    <thead>
                        <tr>
                            <th>Hora</th>
                            <th>Sala 1 </th>
                            <th>Sala 2 </th>
                            <th>Sala 3 </th>
                            <th>Sala 4 </th>
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
                         int bloques1=0;int  van1=1;int  van2=1;int  van3=1;int  van4=1;
                            String idesde="";
                                 String ihasta="";
                                  String i11desde="";
                                 String i12desde="";
                                   String i11hasta="";
                                 String i12hasta="";
                       
                        while(rset.next()){
                           hora=rset.getString("hora") ;
                           try{
                              Statement stmt1=connection.createStatement();
                              ResultSet rset1;
                              String s1="select * FROM agenda WHERE sala='sala1' AND '"+hora+"'>=desde AND '"+hora+"'<=hasta";
                              rset1 = stmt1.executeQuery(s1);
                              isala1="";
                              int son1=0;
                    
                              while(rset1.next()){
                                 idesde=rset1.getString("desde");
                                 ihasta=rset1.getString("hasta");
                         
                                 i11desde=idesde.substring(0,2);
                                 i12desde=idesde.substring(3,5);
                         
                                 i11hasta=ihasta.substring(0,2);
                                 i12hasta=ihasta.substring(3,5);
                         
                                 bloques1=((((Integer.parseInt(i11hasta)-Integer.parseInt(i11desde))*60)+(Integer.parseInt(i12hasta)-Integer.parseInt(i12desde)))/5)+1;
                         
                         
                                 String rut=rset1.getString("rut");
                                 String nombre=rset1.getString("nombre");
                                 String edad=rset1.getString("edad");
                                 String equipo=rset1.getString("equipo");
                                 String cirugia=rset1.getString("cirugia");
                                 String prevision=rset1.getString("prevision");
                                 String anestesista=rset1.getString("anestesista");
                                 isala1="<B>"+idesde+"-"+ihasta+"</B><br>";
                                 isala1=isala1+rut+"<br>";
                                 isala1=isala1+nombre+"<br>";
                                 isala1=isala1+edad+"<br>";
                                 isala1=isala1+equipo+"<br>";
                                 isala1=isala1+cirugia+"<br>";
                                 isala1=isala1+prevision+"<br>";
                                 isala1=isala1+anestesista+"<br>";
                         
                               }
                         
                        
                              stmt1.close();
                             } catch (Exception e1) {
                             System.out.println("Sala 1"+e1.getMessage()+isala1);
                              }
                   
                   
                             try{
                              Statement stmt1=connection.createStatement();
                              ResultSet rset1;
                              String s1="select * FROM agenda WHERE sala='sala2' AND '"+hora+"'>=desde AND '"+hora+"'<=hasta";
                              rset1 = stmt1.executeQuery(s1);
                              isala2="";
                              while(rset1.next()){
                                    idesde=rset1.getString("desde");
                                 ihasta=rset1.getString("hasta");
                         
                                 i11desde=idesde.substring(0,2);
                                 i12desde=idesde.substring(3,5);
                         
                                 i11hasta=ihasta.substring(0,2);
                                 i12hasta=ihasta.substring(3,5);
                         
                                 bloques1=((((Integer.parseInt(i11hasta)-Integer.parseInt(i11desde))*60)+(Integer.parseInt(i12hasta)-Integer.parseInt(i12desde)))/5)+1;
                         
                         
                                 String rut=rset1.getString("rut");
                                 String nombre=rset1.getString("nombre");
                                 String edad=rset1.getString("edad");
                                 String equipo=rset1.getString("equipo");
                                 String cirugia=rset1.getString("cirugia");
                                 String prevision=rset1.getString("prevision");
                                 String anestesista=rset1.getString("anestesista");
                                 isala2="<B>"+idesde+"-"+ihasta+"</B><br>";
                                 isala2=isala2+rut+"<br>";
                                 isala2=isala2+nombre+"<br>";
                                 isala2=isala2+edad+"<br>";
                                 isala2=isala2+equipo+"<br>";
                                 isala2=isala2+cirugia+"<br>";
                                 isala2=isala2+prevision+"<br>";
                                 isala2=isala2+anestesista+"<br>";
                               }
                              stmt1.close();
                             } catch (Exception e1) {
                             System.out.println("Sala 2"+e1.getMessage()+isala1);
                              }
                     
                     
                               try{
                              Statement stmt1=connection.createStatement();
                              ResultSet rset1;
                              String s1="select * FROM agenda WHERE sala='sala3' AND '"+hora+"'>=desde AND '"+hora+"'<=hasta";
                              rset1 = stmt1.executeQuery(s1);
                              isala3="";
                              while(rset1.next()){
                                   idesde=rset1.getString("desde");
                                 ihasta=rset1.getString("hasta");
                         
                                 i11desde=idesde.substring(0,2);
                                 i12desde=idesde.substring(3,5);
                         
                                 i11hasta=ihasta.substring(0,2);
                                 i12hasta=ihasta.substring(3,5);
                         
                                 bloques1=((((Integer.parseInt(i11hasta)-Integer.parseInt(i11desde))*60)+(Integer.parseInt(i12hasta)-Integer.parseInt(i12desde)))/5)+1;
                         
                         
                                 String rut=rset1.getString("rut");
                                 String nombre=rset1.getString("nombre");
                                 String edad=rset1.getString("edad");
                                 String equipo=rset1.getString("equipo");
                                 String cirugia=rset1.getString("cirugia");
                                 String prevision=rset1.getString("prevision");
                                 String anestesista=rset1.getString("anestesista");
                                 isala3="<B>"+idesde+"-"+ihasta+"</B><br>";
                                 isala3=idesde+"-"+ihasta+"<br>";
                                 isala3=isala3+rut+"<br>";
                                 isala3=isala3+nombre+"<br>";
                                 isala3=isala3+edad+"<br>";
                                 isala3=isala3+equipo+"<br>";
                                 isala3=isala3+cirugia+"<br>";
                                 isala3=isala3+prevision+"<br>";
                                 isala3=isala3+anestesista+"<br>";
                               }
                              stmt1.close();
                             } catch (Exception e1) {
                             System.out.println("Sala 4"+e1.getMessage()+isala1);
                              }
                       
                                 try{
                              Statement stmt1=connection.createStatement();
                              ResultSet rset1;
                              String s1="select * FROM agenda WHERE sala='sala4' AND '"+hora+"'>=desde AND '"+hora+"'<=hasta";
                              rset1 = stmt1.executeQuery(s1);
                              isala4="";
                              while(rset1.next()){
                                idesde=rset1.getString("desde");
                                 ihasta=rset1.getString("hasta");
                         
                                 i11desde=idesde.substring(0,2);
                                 i12desde=idesde.substring(3,5);
                         
                                 i11hasta=ihasta.substring(0,2);
                                 i12hasta=ihasta.substring(3,5);
                         
                                 bloques1=((((Integer.parseInt(i11hasta)-Integer.parseInt(i11desde))*60)+(Integer.parseInt(i12hasta)-Integer.parseInt(i12desde)))/5)+1;
                         
                         
                                 String rut=rset1.getString("rut");
                                 String nombre=rset1.getString("nombre");
                                 String edad=rset1.getString("edad");
                                 String equipo=rset1.getString("equipo");
                                 String cirugia=rset1.getString("cirugia");
                                 String prevision=rset1.getString("prevision");
                                 String anestesista=rset1.getString("anestesista");
                                 isala4="<B>"+idesde+"-"+ihasta+"</B><br>";
                                 isala4=idesde+"-"+ihasta+"<br>";
                                 isala4=isala4+rut+"<br>";
                                 isala4=isala4+nombre+"<br>";
                                 isala4=isala4+edad+"<br>";
                                 isala4=isala4+equipo+"<br>";
                                 isala4=isala4+cirugia+"<br>";
                                 isala4=isala4+prevision+"<br>";
                                 isala4=isala4+anestesista+"<br>";
                               }
                              stmt1.close();
                             } catch (Exception e1) {
                             System.out.println("Sala 4"+e1.getMessage()+isala1);
                              }
                    

                        out.println("<tr>");
                        out.println("<td>"+hora+"</td>");
              
                        if (!isala1.equals("") && van1<=bloques1){
                      
                              if (van1==1) {
                                  out.println("<td style='background-color:#00FF00'>"+isala1+"</td>");
                                  van1++;
                              }else{
                                  out.println("<td style='background-color:#00FF00'></td>");
                                  van1++;
                              }
                      
               
                        }else{
                            out.println("<td>"+isala1+"</td>");   
                            van1=1;
                        }
                         if (!isala2.equals("") && van2<=bloques1){
                               if (van2==1) {
                                  out.println("<td style='background-color: #33a5ff'>"+isala2+"</td>");
                                  van2++;
                              }else{
                                  out.println("<td style='background-color: #33a5ff'></td>");
                                  van2++;
                              }
                        }else{
                            out.println("<td>"+isala2+"</td>");  
                            van2=1;
                        }
                        if (!isala3.equals("") && van3<=bloques1){
                               if (van3==1) {
                                  out.println("<td style='background-color: #ffa833'>"+isala3+"</td>");
                                  van3++;
                              }else{
                                  out.println("<td style='background-color: #ffa833'></td>");
                                  van3++;
                              }
                        }else{
                            out.println("<td>"+isala3+"</td>");   
                            van3=1;
                        }
                 
                         if (!isala4.equals("") && van4<=bloques1){
                               if (van4==1) {
                                  out.println("<td style='background-color: #ff3377'>"+isala4+"</td>");
                                  van4++;
                              }else{
                                  out.println("<td style='background-color: #ff3377 '></td>");
                                  van4++;
                              }
                        }else{
                            out.println("<td>"+isala4+"</td>");   
                            van4=1;
                        }
                        out.println("</tr>");
                        //van1=0;
                        }
                        connection.close();
                        } catch (Exception e) {
                           e.printStackTrace();
                        }
                        %>
                    </tbody>
                </table>
            </div>
                    <div style="width:300px; background:#CCFF66; float:right;">
                        
                        Fecha Solicitud <input type="date" name="searchfechasolicitud"  id="searchfechasolicitud" /><button id="btn-buscarfechasolicitud">Buscar</button><br>
                        <tabla id="consulta">
                            <thead>
                            <th>Fecha Solicitud</th>
                            <th>Rut </th> 
                            <th>Medico</th>
                            <th>Cirugia</th>
                            <th>Telefono</th>
                            <th></th>
                            </thead>
                            <tbody>
                                
                            </tbody>
                        </tabla>
                        
                    </div>
        </div>


    </body>
</html>
