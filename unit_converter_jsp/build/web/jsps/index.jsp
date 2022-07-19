<%-- 
    Document   : index
    Created on : 8 mars 2022, 18:42:45
    Author     : bennington
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <title>Unit converter </title>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    
    <body>
        <header class="page-header">
    <h1>Unit converter</h1>
</header>
    <body class="bdy">
        <div class="convert">
            <form method="post" action="convert.jsp">
            <table class="tab">
                <tr>
                    <td><h3>Enter a number to convert</h3></td>
                    <td><input class="value_holder" type="number" name="unit" id="uni"></td>
                </tr>

                <tr>
                    <td><h3>Choose a unit</h3></td>
                    <td>
                    <select name="mesurement" class="type_conv">
                    <option name="select">Select a mesurement</option>
                    <option name="lenght">lenght</option>
                    <option name="weight">weight</option>
                    <option name="speed">speed</option>
                    <option name="frequency">frequency</option>
                    <option name="pressure">pressure</option>
                </select>      
                    </td>
                </tr>
              
                <tr>
                    <td><h3>From</h3></td>
                    <%--<td class='from_container'>--%>
                    <td >
                        
                        <select name="from" id="from" class='from_container'>
                            <option name='from'>From       </option>
                        </select>
                    </td>
            
                </tr>
                <tr>
                    <td><h3>To</h3></td>
                    <%--<td class='to_container' id="to">--%>
                    <td  >
                        <select name="to" id="to" class='to_container'>
                            <option>To</option>
                        </select>
                    </td>
                </tr>
                    </table> 
                    <%--
                <h3 >Result : <span class="result_holder"></span></h3>--%>
                    <input type="submit" value="Convert" class="btn"><!-- comment -->
                
                 <button class="cancel" value="cancel" onclick="unit.value=''">Cancel</button>
                 
            </form>
        </div>
        <script>
   
            $(document).ready(function(){
                ///////////////////
                       <%-- $('.value_holder').on('change',function(){
                    $('.result_holder').text($(this).val());
                });
                --%>
                ////////////////
               $('.type_conv').on('change',function(){
                   let unit_holder_from = '<select name="from"><option>input unit</option>';
                   let data_items_weight= [
                       {
                           index: 0,
                           value : 'Kilogram'
                       },
                        {
                           index: 1,
                           value : 'Pound LBS'
                       },
                       {
                           index: 2,
                           value : 'Gram'
                       },
                       {
                           index: 3,
                           value : 'Milligram'
                       },
                       {
                           index: 4,
                           value : 'Metric ton'
                       },
                       {
                           index: 5,
                           value : 'Hectogram'
                       },
                       {
                           index: 6,
                           value : 'Dekagram'
                       },
                       {
                           index: 7,
                           value : 'Decigram'
                       },
                       {
                           index: 8,
                           value : 'Centigram'
                       }
                       
                   ]; 
                   let unit_holder_to = '<select name="to" id="output"> output unit';
                   let data_items_lenght = [
                       {
                           index: 0,
                           value : 'Miles'
                       },
                        {
                           index: 1,
                           value : 'Kilometer'
                       },
                       {
                           index: 2,
                           value : 'Yards'
                       },
                       {
                           index: 3,
                           value : 'Meter'
                       },
                       {
                           index: 4,
                           value : 'Centimeter'
                       },
                       {
                           index: 5,
                           value : 'Mellimeter'
                       },
                       {
                           index: 6,
                           value : 'Decimeter'
                       },
                       {
                           index: 7,
                           value : 'Foot'
                       }
                   ];
                   let data_items_speed = [
                       {
                           index: 0,
                           value : 'Mile per hour'
                       },
                        {
                           index: 1,
                           value : 'Foot per second'
                       },
                       {
                           index: 2,
                           value : 'Meter per second'
                       },
                       {
                           index: 3,
                           value : 'Kilometer per hour'
                       },
                       {
                           index: 4,
                           value : 'Sailors knot'
                       }
                   ];
                   let data_items_frequency = [
                       {
                           index: 0,
                           value : 'Hertz'
                       },
                        {
                           index: 1,
                           value : 'Kilohertz'
                       },
                       {
                           index: 2,
                           value : 'Gegahertz'
                       },
                       {
                           index: 3,
                           value : 'Megahertz'
                       },
                       
                   ];
                   let data_items_pressure = [
                       {
                           index: 0,
                           value : 'Pascal'
                       },{
                           index: 1,
                           value : 'Atmospheric'
                       },
                        
                       {
                           index: 2,
                           value : 'Bar'
                       },
                       {
                           index: 3,
                           value : 'Psi'
                       },
                       {
                           index: 4,
                           value : 'Torr'
                       }
                   ];
                   if($(this).val() === 'weight'){
                       data_items_weight.forEach (function(key, item){
                          unit_holder_from +='<option>'+key.value+'</option>';
                          unit_holder_to +='<option>'+key.value+'</option>';
                       });
                        unit_holder_from +='</select>';
                        unit_holder_to +='</select>';
                       $('.from_container').html(unit_holder_from);
                       $('.to_container').html(unit_holder_to);
                   }
                   else if ($(this).val() === 'lenght'){
                       data_items_lenght.forEach (function(key, item){
                           unit_holder_from +='<option>'+key.value+'</option>';
                           unit_holder_to +='<option>'+key.value+'</option>';
                       });
                        unit_holder_to +='</select>';
                        unit_holder_from +='</select>';
                       $('.from_container').html(unit_holder_from);
                       $('.to_container').html(unit_holder_to);
               }
               else if ($(this).val() === 'speed'){
                       data_items_speed.forEach (function(key, item){
                           unit_holder_from +='<option>'+key.value+'</option>';
                           unit_holder_to +='<option>'+key.value+'</option>';
                       });
                        unit_holder_to +='</select>';
                        unit_holder_from +='</select>';
                       $('.from_container').html(unit_holder_from);
                       $('.to_container').html(unit_holder_to);
               }
               else if ($(this).val() === 'frequency'){
                       data_items_frequency.forEach (function(key, item){
                           unit_holder_from +='<option>'+key.value+'</option>';
                           unit_holder_to +='<option>'+key.value+'</option>';
                       });
                        unit_holder_to +='</select>';
                        unit_holder_from +='</select>';
                       $('.from_container').html(unit_holder_from);
                       $('.to_container').html(unit_holder_to);
               }
               else if ($(this).val() === 'pressure'){
                       data_items_pressure.forEach (function(key, item){
                           unit_holder_from +='<option>'+key.value+'</option>';
                           unit_holder_to +='<option>'+key.value+'</option>';
                       });
                        unit_holder_to +='</select>';
                        unit_holder_from +='</select>';
                       $('.from_container').html(unit_holder_from);
                       $('.to_container').html(unit_holder_to);
               }
            });
            });
        </script>
    </body>
</html>
