<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page import="java.util.Map" %>
<title></title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link href="css/date.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/mootools.js"></script>
<script type="text/javascript" src="js/uploadPhoto.js"></script>
<script type="text/javascript" src="js/DatePicker.js"></script>
<script type="text/javascript" src="js/addingRow.js"></script>
<script type="text/javascript">

	function onClickNextButton(location){
		
		 document.getElementById('formID').action =location;
			
			
	}
	function onClickBackButton(location){
		
		document.getElementById('formID').action =location;
		
}
	
	window.addEvent('domready', function(){

	$$('input.dateField').each( function(el){
		new DatePicker(el);
	});

});


</script>


</head>

<body>

<div id="wrapper" >
<!--
		Top part of the page
-->
	<div id ="inner1" class="Top_Heading" style="background:url(images/body_bg_top.jpg) repeat-x; width:100%; height:60px" >
      
   			 <img alt="" src="images/inv.png" />
			 <h1 style="float:left; margin-top:3px;"><a href="#" style="text-decoration:none;color:#FFF" > &nbsp; Payroll System</a></h1>
             <h1 style="float:right; margin-top:3px; width:20%;"><a href="#" style="text-decoration:none;color:#FFF" >
             <% Map<String,Object> userRecord=(Map<String,Object>)request.getSession().getAttribute("PAYROLL_USER");
	  						out.print("Welcome "+userRecord.get("userName").toString().toUpperCase());
	  						if(userRecord.get("companyName")!=null){
	  							out.print(" to "+userRecord.get("companyName"));	
	  						}
	  		  %></a></h1>
	</div>
<!--
		Middle part of the top part
-->

	<div id="inner2" style="background:url(images/body_bg_middle.jpg) repeat-x; width:100%; height:20px">
	
    </div>
<!--
		Bottom part of the top part
-->

	<div id="inner2" style="background:url(images/body_bg_bottom.jpg) repeat-x; width:100%; height:3px">

    </div>

<!--
		Menu of the page
-->

   <div  class="inner3" style =" width:100%" id='cssmenu'>

	<ul id="menu-bar">
   		   <li class='active'><a href='index.html'><span>Home</span></a></li>
		   <li><a href='#'><span>Master</span></a>
      		<ul>
      			<li><a href='#'><span>Company</span></a>
			         	<ul>
			         		<li><a href='addCompany.do'><span>Add Company</span></a></li>
			         		<li><a href='viewCompany.do'><span>View Company</span></a></li>
			         	</ul>
			     </li>
         		<li><a href='#'><span>Group</span></a>
			         	<ul>
			         		<li><a href='addGroup.do'><span>Add Group</span></a></li>
			         		<li><a href='viewGroup.do'><span>View Group</span></a></li>
			         	</ul>
			     </li>
			    
         		<li><a href='#'><span>Employee Type</span></a>
         				<ul>
			         		<li><a href='addEmployeeType.do'><span>Add Employee Type</span></a></li>
			         		<li><a href='viewEmployeeType.do'><span>View Employee Type</span></a></li>
			         	</ul>
			    </li>
         		<li><a href='#'><span>Department</span></a>
         				<ul>
			         		<li><a href='addDepartment.do'><span>Add Department</span></a></li>
			         		<li><a href='viewDepartment.do'><span>View Department</span></a></li>
			         	</ul>
			     </li>
			     <li><a href='#'><span>Occupation</span></a>
         				<ul>
			         		<li><a href='addOccupation.do'><span>Add Occupation</span></a></li>
			         		<li><a href='viewOccupation.do'><span>View Occupation</span></a></li>
			         	</ul>
			     </li>
         		<li><a href='#'><span>Employee</span></a>
         				<ul>
         					<li><a href='#'><span>Search Employee</span></a></li>
			         		<li><a href='addEmployee.do'><span>Add Employee</span></a></li>
			         		<li><a href='#'><span>View Employee</span></a></li>
			         	</ul>
			     </li>
			    
      		</ul>
   		</li>
   			<li><a href='#'><span>Transaction</span></a></li>
   			<li><a href='#'><span>Process</span></a></li>
   			<li><a href='#'><span>Report</span></a></li>
   			<li><a href='#'><span>Tools</span></a>
   					<ul>
         				<li><a href='#'><span>User</span></a>
		         				<ul>
					         		<li><a href='addUser.do'><span>Add User</span></a></li>
					         		<li><a href='viewUser.do'><span>View User</span></a></li>
					         	</ul>
					      </li>
			         	<li><a href='#'><span>Setting </span></a>
			         		<ul>
			         			<li><a href='#'><span>Add Company Details & Email Details</span></a></li>
			         			<li><a href='#'><span>Fortnigth Setting</span></a></li>
			         			<li><a href='#'><span>Dearness Allowance Setting</span></a></li>
			         			
			         		</ul>
			         	</li>	
			         	<li><a href='#'><span>Empty</span></a>
			         		<ul>
			         			<li><a href='#'><span>Empty</span></a></li>
			         			<li><a href='#'><span>Empty</span></a></li>
			         		</ul>
			         	</li>	
			         </ul>
   			</li>
   			<li><a href='logout.do'><span>Logout</span></a></li>
	</ul>
	</div> 
	</div>
	</body>
	</html>