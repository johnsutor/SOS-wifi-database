<%-- 
    Document   : Sensor
    Created on : Nov 17, 2013, 3:25:25 PM
    Author     : Johnsutor
--%>

<%@page import="com.tornadoprotection.EventWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   

<% String lat = request.getParameter ("lat");   
String lon = request.getParameter ("lon");
String pressure = request.getParameter ("pressure");
String temp = request.getParameter ("temp");
String ID = request.getParameter ("ID");
EventWriter.process(lat, lon, pressure, temp, ID);
%> 
The current temperature is <b><%= temp %></b>
Your pressure is <b><%= pressure %></b>
Your latitude is <b><%= lat %></b>
Your longitude is <b><%= lon %></b>
The current temperature is <b><%= temp %></b>
Your ID is <b><%= ID %><b>
</html>
