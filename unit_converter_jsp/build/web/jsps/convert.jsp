<%-- 
    Document   : convert
    Created on : 8 mars 2022, 18:29:45
    Author     : bennington
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@include file="index.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>conversion</title>
    </head>
    <body>

        <%
        //String mesuremment = request.getParameter("mesurement");
        Double input=Double.parseDouble(request.getParameter("unit"));
        String input_unit = request.getParameter("from");
        String output_unit = request.getParameter("to");
        double res=0;
        String abrev_input="";
        String abrev_output="";
        //lenght conversion
        try{
            
               switch(input_unit){
            case "Miles":switch(output_unit){
                case "Miles": res=input;
                break;
                case "Yards": res=input*1760;
                break;
                case "Kilometer": res=input*1.6;
                break;
                case "Meter": res = input*1609.34;
                break;
                case "Decemeter": res = input*16093.4;
                break;
                case "Foot": res = input*5280;
                break;
                case "Centimeter": res = input*160934;
                break;
                case "Mellimeter":  res = input*1609344;
            }break;
            case "Yards":switch(output_unit){
                case "Miles":  res=input/1760;
                break;
                case "yards": res=input;
                break;
                case "Kilometer": res=input*0.000914;
                break;
                case "Meter": res = input/0.9144;
                break;
                case "Decemeter": res = input*9.14;
                break;
                case "Foot": res = input*3;
                break;
                case "Mellimeter": res = input*914.4;
                break;
                case "Centimeter": res = input*91.44;
            }break;
            case "Kilometer":switch(output_unit){
                case "Miles": res=input*0.6214;
                break;
                case "Yards": res=input*1760;
                break;
                case "Kilometer": res=input;
                break;
                case "Meter": res=input*1000;
                break;
                case "Decemeter": res=input*10000;
                break;
                case "Foot": res=input*3281;
                break;
                case "Centimeter": res=input*100000;
                break;
                case "Mellimeter": res=input*1000000;
            }break;
            case "Meter":switch(output_unit){
                case "Miles": res=input/1609;break;
                case "Yards": res=input/1094;break;
                case "Kilometer": res=input/1000;break;
                case "Meter": res=input;break;
                case "Decemeter": res=input*10;break;
                case "Foot": res=input*3.81;break;
                case "Centimeter": res=input*100;break;
                case "Mellimeter": res=input*1000;break;
            }break;
            case "Decemeter":switch(output_unit){
                case "Miles": res=input/16093.4;break;
                case "Yards": res=input/1094;break;
                case "Kilometer": res=input/10000;break;
                case "Meter": res=input;break;
                case "Decemeter": res=input;break;
                case "Foot": res=input/3.48;break;
                case "Centimeter": res=input*10;break;
                case "Mellimeter": res=input*100;break;
            }break;
            case "Foot":switch(output_unit){
                case "Miles": res=input/5280;break;
                case "Yards": res=input/3;break;
                case "Kilometer": res=input/3281;break;
                case "Meter": res=input/3.81;break;
                case "Decemeter": res=input*3.48;break;
                case "Foot": res=input;break;
                case "Centimeter": res=input*30.48;break;
                case "Mellimeter": res=input*304.8;break;
            }break;
            case "Centimeter":switch(output_unit){
                case "Miles": res=input*160934;break;
                case "Yards": res=input/91.44;break;
                case "Kilometer": res=input/100000;break;
                case "Meter": res=input/10000;break;
                case "Decemeter": res=input/10;break;
                case "Foot": res=input/30.48;break;
                case "Centimeter": res=input;break;
                case "Mellimeter": res=input*10;break;
            }break;
            case "Mellimeter":switch(output_unit){
                case "Miles": res=input/1609344;break;
                case "Yards": res=input/914.4;break;
                case "Kilometer": res=input/1000000;break;
                case "Meter": res=input/1000;break;
                case "Decemeter": res=input/100;break;
                case "Foot": res=input/305;break;
                case "Centimeter": res=input/10;break;
                case "Mellimeter": res=input;break;
            }break;
        }
        }catch(Exception e){
           e.printStackTrace();
        }
        //weight conversion
        try{
            
            switch(input_unit){
            case "Kilogram":switch(output_unit){
                case "Kilogram": res=input;break;
                case "Pound LBS": res=input*2.205;break;
                case "Metric ton": res=input/1000;break;
                case "Hectogram": res=input*10;break;
                case "Dekagram": res=input*100;break;
                case "Decigram": res=input*1000;break;
                case "Centigram": res=input*10000;break;
                case "Milligram": res=input*100000;break;
            }break;
            case "Pound LBS":switch(output_unit){
                case "Kilogram":  res=input/2.205;break;
                case "Mettric ton": res=input/2250;break;
                case "Hectogram": res=input*4.536;break;
                case "Dekagram": res=input*45.359;break;
                case "Decigram": res=input*453.59;break;
                case "Centigram": res=input*4535.9;break;
                case "Milligram": res=input*453592;break;
        }
            case "Metric ton":switch(output_unit){
                case "Kilogram":res=input*1000;break;
                case "Mettric ton": res=input;break;
                case "Hectogram": res=input*10000;break;
                case "Dekagram": res=input*100000;break;
                case "Decigram": res=input*1000000;break;
                case "Centigram": res=input*10000000;break;
                case "Milligram": res=input*100000000;break;
        }
            case "Hectogram":switch(output_unit){
                case "Kilogram":res=input/10;break;
                case "Mettric ton": res=input/10000;break;
                case "Hectogram": res=input;break;
                case "Dekagram": res=input*10;break;
                case "Decigram": res=input*100;break;
                case "Centigram": res=input*1000;break;
                case "Milligram": res=input*10000;break;
        }
            case "Dekagram":switch(output_unit){
                case "Kilogram":res=input/100;break;
                case "Mettric ton": res=input/100000;break;
                case "Hectogram": res=input/10;break;
                case "Dekagram": res=input;break;
                case "Decigram": res=input*100;break;
                case "Centigram": res=input*1000;break;
                case "Milligram": res=input*10000;break;
        }
            case "Decigram":switch(output_unit){
                case "Kilogram":res=input/100;break;
                case "Mettric ton": res=input/100000;break;
                case "Hectogram": res=input/10;break;
                case "Dekagram": res=input;break;
                case "Decigram": res=input*100;break;
                case "Centigram": res=input*1000;break;
                case "Milligram": res=input*100;break;
        }
            case "Centigram":switch(output_unit){
                case "Kilogram":res=input/100000;break;
                case "Mettric ton": res=input/100000000;break;
                case "Hectogram": res=input/10000;break;
                case "Dekagram": res=input/10000;break;
                case "Decigram": res=input/1000;break;
                case "Centigram": res=input;break;
                case "Milligram": res=input*10;break;
        }
            case "Milligram":switch(output_unit){
                case "Kilogram":res=input/1000000;break;
                case "Mettric ton": res=input/1000000000;break;
                case "Hectogram": res=input/100000;break;
                case "Dekagram": res=input/10000;break;
                case "Decigram": res=input/100;break;
                case "Centigram": res=input/10;break;
                case "Milligram": res=input;break;
        }
               }
            
        }catch(Exception e){
           e.printStackTrace();
        }
        //speed coonversion
        try{
            
            switch(input_unit){
            case "Mile per hour":switch(output_unit){
                case "Foot per second": res=input*1.467;break;
                case "Meter per second": res=input/2.237;break;
                case "Kilometer per hour": res=input*1.609;break;
                case "Sailors knot": res=input/1.151;  break; 
            }break;
            case "Foot per second":switch(output_unit){
                case "Miler per hour":  res=input/1.467;break;
                case "Meter per second": res=input/3.281;break;
                case "Kilometer per hour": res=input*1.097;break;
                case "Sailors knot": res=input/1.688;break;
        }
            case "Meter per second":switch(output_unit){
                case "Mile per hour":res=input*2.237;break;
                case "Foot per second": res=input*3.281;break;
                case "Kilometer per hour": res=input*3.6;break;
                case "Sailors knot": res=input*1.944;break;
        }
            case "Kilometer per hour":switch(output_unit){
                case "Mile per hour":res=input/1.609;break;
                case "Foot per second": res=input/1.097;break;
                case "Sailors knot": res=input/1.852;break;
                case "Meter per second": res=input/3.6;break;
        }
                case "Sailors knot":switch(output_unit){
                case "Mile per hour":res=input*1.151;break;
                case "Foot per second": res=input*1.688;break;
                case "Kilometer per hour": res=input*1.852;break;
                case "Meter per second": res=input/1.944;break;
        }
               }
            
        }catch(Exception e){
           e.printStackTrace();
        }
        //frequency conversion 
        try{
            
            switch(input_unit){
            case "Hertz":switch(output_unit){
                case "Kilohertz": res=input/1000;break;
                case "Gegahertz": res=input/1000000000;break;
                case "Megahertz": res=input/1000000;  break; 
            }break;
            case "Kilohertz":switch(output_unit){
                case "Hertz":  res=input*1000;break;
                case "Gegahertz": res=input/1000000;break;
                case "Megahertz": res=input/1000;break;
        }
            case "Gegahertz":switch(output_unit){
                case "Kilohertz":res=input*1000000;break;
                case "Megahertz": res=input*1000;break;
                case "Hertz": res=input*100000000;break;
        }
            case "Megahertz":switch(output_unit){
                case "Kilohertz":res=input*1000;break;
                case "Gegahertz": res=input/1000;break;
                case "Hertz": res=input*1000000;break;
        }
               }
            
        }catch(Exception e){
           e.printStackTrace();
        }
        //pressure conversion 
        try{
            
            switch(input_unit){
            case "Atmospheric":switch(output_unit){
                case "Bar": res=input*1.13;break;
                case "Pascal": res=input*101325;break;
                case "Psi": res=input*14.393; break;
                case "Torr": res=input*760; break;
            }break;
            case "Bar":switch(output_unit){
                case "Atmospheric":  res=input/1.013;break;
                case "Pascal": res=input*100000;break;
                case "Psi": res=input*14.504;break;
                case "Torr": res=input*750;break;
        }
            case "Pascal":switch(output_unit){
                case "Atmospheric":res=input/101325;break;
                case "Bar": res=input/100000;break;
                case "Psi": res=input/6859;break;
                case "Torr": res=input/133;break;
        }
            case "Psi":switch(output_unit){
                case "Atmospheric":res=input/14.696;break;
                case "Bar": res=input/14.504;break;
                case "Pascal": res=input*6895;break;
                case "Torr": res=input*51.715;break;
        }
            case "Torr":switch(output_unit){
                case "Atmospheric":res=input/760;break;
                case "Bar": res=input/750;break;
                case "Pascal": res=input*133;break;
                case "Psi": res=input/51.715;break;
        }
               }
            
        }catch(Exception e){
           e.printStackTrace();
        }
            // lenghts abbreviations
           try{
            switch(output_unit){
                case "Miles": abrev_output="M";
                break;
                case "Kilometer": abrev_output="KM";
                break;
                case "Yards":abrev_output="Yd";
                break;
                case "Meter":abrev_output="m";
                break;
                case "Centimeter":abrev_output="Cm";
                break;
                case "Mellimeter":abrev_output="Mm";
                break;
                case "Foot":abrev_output="ft";
                break;
               
            }
            switch(input_unit){
                case "Miles": abrev_input="M";
                break;
                case "Kilometer": abrev_input="KM";
                break;
                case "Yards":abrev_input="Yd";
                break;
                case "Meter":abrev_input="m";
                break;
                case "Centimeter":abrev_input="Cm";
                break;
                case "Mellimeter":abrev_input="Mm";
                break;
                case "Foot":abrev_input="ft";
                break;
               
            }
            }catch(Exception e){
            e.printStackTrace();
            }     
            //pressure units 
          
            // lenghts abbreviations
           try{
            switch(output_unit){
                case "Pascal": abrev_output="P";
                break;
                case "Psi": abrev_output="Psi";
                break;
                case "Atmospheric":abrev_output="As";
                break;
                case "Bar":abrev_output="B";
                break;
                case "Torr":abrev_output="Tr";
                break;
                
            }
            switch(input_unit){
                case "Pascal": abrev_input="P";
                break;
                case "Psi": abrev_input="Psi";
                break;
                case "Atmospheric":abrev_input="As";
                break;
                case "Bar":abrev_input="B";
                break;
                case "Torr":abrev_input="Tr";
                break;
            }
            }catch(Exception e){
            e.printStackTrace();
            }
           //weght abbreviations 
           try{
            switch(output_unit){
                case "Kilogram": abrev_output="Kg";
                break;
                case "Pound LBS": abrev_output="Lbs";
                break;
                case "Gram":abrev_output="g";
                break;
                case "Milligram":abrev_output="mg";
                break;
                case "Metric ton":abrev_output="t";
                break;
                case "Hectogram":abrev_output="hg";
                break;
                case "Dekagram":abrev_output="dag";
                break;
                case "Decigram":abrev_output="dg";
                break;
                case "Centigram":abrev_output="cg";
                break;
            }
            switch(input_unit){
                case "Kilogram": abrev_input="Kg";
                break;
                case "Pound LBS": abrev_input="Lbs";
                break;
                case "Gram":abrev_input="g";
                break;
                case "Milligram":abrev_input="mg";
                break;
                case "Metric ton":abrev_input="t";
                break;
                case "Hectogram":abrev_input="hg";
                break;
                case "Dekagram":abrev_input="dag";
                break;
                case "Decigram":abrev_input="dg";
                break;
                case "Centigram":abrev_input="cg";
                break;
            }
            }catch(Exception e){
            e.printStackTrace();
            }
           //speed abbreviations 
           try{
            switch(output_unit){
                case "Mile per hour": abrev_output="mph";
                break;
                case "Foot per second": abrev_output="ft/s";
                break;
                case "Meter per second":abrev_output="m/s";
                break;
                case "Kilometer per hour":abrev_output="Km/h";
                break;
                case "Sailors knot":abrev_output="Kn";
                break;
            }
            switch(input_unit){
              case "Mile per hour": abrev_input="mph";
                break;
                case "Foot per second": abrev_input="ft/s";
                break;
                case "Meter per second":abrev_input="m/s";
                break;
                case "Kilometer per hour":abrev_input="Km/h";
                break;
                case "Sailors knot":abrev_input="Kn";
                break;
            }
            }catch(Exception e){
            e.printStackTrace();
            }
           //frequency abbreviations 
           try{
            switch(output_unit){
                case "Hertz": abrev_output="Hz";
                break;
                case "Kilohertz": abrev_output="KHz";
                break;
                case "Gegahertz":abrev_output="GHz";
                break;
                case "Megahertz":abrev_output="MHz";
                break;
            }
            switch(input_unit){
              case "Hertz": abrev_input="Hz";
                break;
                case "Kilohertz": abrev_input="KHz";
                break;
                case "Gegahertz":abrev_input="GHz";
                break;
                case "Megahertz":abrev_input="MHz";
                break;
            }
            }catch(Exception e){
            e.printStackTrace();
            }
           //pressure abbreviations 
           try{
            switch(output_unit){
                case "Pascal": abrev_output="Pa";
                break;
                case "Atmospheric": abrev_output="Atm";
                break;
                case "Bar":abrev_output="bar";
                break;
                case "Psi":abrev_output="Psi";
                break;
                case "Torr":abrev_output="Torr";
                break;
            }
            switch(input_unit){
                case "Pascal": abrev_input="Pa";
                break;
                case "Atmospheric": abrev_input="Atm";
                break;
                case "Bar":abrev_input="bar";
                break;
                case "Psi":abrev_input="Psi";
                break;
                case "Torr":abrev_input="Torr";
                break;
            }
            }catch(Exception e){
            e.printStackTrace();
            }
        %>
        <div class="resut_holdder">
            <h1> your input unit: <%=input_unit%> </h1><br>
            <h1> your output unit: <%=output_unit%> </h1><br>
            <h1> your conversion result for <%=input%> <%=input_unit%> (<%=abrev_input%>) is: <%=res%> <%=output_unit%> (<%=abrev_output%>)</h1><br>
        </div>        
    </body>
</html>
