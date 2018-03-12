<%@page import="beans.S2I"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Openshift Accelerator</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet" href="Design.css" type="text/css">
<body>
<div id="TitleDiv">
       		<div id="LeftDiv">
				<img src="wiprologo.png" alt="Not loaded" >					
			</div>				
			<div id="RightDiv">				
				<h3 style="font-family: Century Gothic, sans-serif;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspOPENSHIFT ACCELERATOR</h3>									
			</div>  
			<!--  <div id="SideDiv">
					<h4>Welcome			
					<a href="Login.jsp">Logout</a></h4>
					</div>
			-->									           	        		        			        	        		      
</div>				                   
        <br>    
        <br>      
                   
       	 <div id="TitleS2i">
	        <div id="leftTitleS2i">
		        <div id="heading">
		        	<h1>Source Details</h1>
		        </div>
		        <div id="s2i">
		        	<img src="S2I.png" height="70px;" width="100px;">        	
		        </div>
		    </div>
	        <div id="rightTitleS2i">	        	
	        	<h1>Target Details</h1>
	        </div>
        
        </div> 
        <form method="post" action="Servlet">
       	<div id="content">       	
       		<div id="left">       	              	        
		        <table>		        	        		        	                   		        	                          
		                <tr>
		                    <td>
		                        Type of Application
		                    </td>
		                    <td>
		                        <select class="form-control" name="typeOfApplication" style="width: 300px;">
		                        	<option>Java</option>
		                        	<option>J2EE</option>
		                        	<option>Python</option>
		                        	<option>Perl</option>
		                        	<option>.NET</option>
		                        	<option>PHP</option>
		                        </select>                                               
		                    </td>
		                </tr>
		                <tr>
		                    <td>
		                        Source Repository
		                    </td>
		                    <td>
		                          <input style="color:black" class="form-control" type="text" id="SourceRepository" name="SourceRepository" placeholder="https://github.com/username/sample.git">                                             
		                    </td>
		                </tr>
		                <tr>
		                    <td>
		                        Deployment OS
		                    </td>
		                    <td>
		                        <select class="form-control" name="DeployementOS">
		                        	<option>Linux</option>
		                        	<option>Windows</option>
		                        </select>                                               
		                    </td>
		                </tr>
		                <tr>
		                    <td>
		                        Deployment Server
		                    </td>
		                    <td>
		                        <select class="form-control" name="DeploymentServer">
		                        	<option>Tomcat</option>
		                        	<option>Jboss</option>		                        	
		                        </select>                                               
		                    </td>
		                </tr>
		               	<tr>
		                    <td>
		                        Build File
		                    </td>
		                    <td>
		                          <input style="color:black" class="form-control" type="text" id="BuildFile" name="BuildFile" placeholder="e.g pom.xml">                                             
		                    </td>
		                </tr>		            	 
		        </table> 
	          </div>
	        <div id="right">
		        <table>		              		        	                                              
		                <tr>
		                    <td>
		                        Project Name 
		                    </td>
		                    <td>
		                        <input style="color:black; width:300px;" class="form-control" type="text" id="ProjectName" name="ProjectName">                                                                                              
		                    </td>
		                </tr>
		                <tr>
		                    <td>
		                        Base Docker Image 
		                    </td>
		                    <td>
		                        <input style="color:black" class="form-control" type="text" id="BaseDockerImage" name="BaseDockerImage">                                                                                              
		                    </td>
		                </tr>
		                <tr>
		                    <td>
		                        Docker Image
		                    </td>
		                    <td>
		                        <input style="color:black" class="form-control" type="text" id="DockerImage" name="DockerImage">                                                                                              
		                    </td>
		                </tr>
		                <tr>
		                    <td>
		                        Application Port 
		                    </td>
		                    <td>
		                        <input style="color:black" class="form-control" type="text" id="ApplicationPort" name="ApplicationPort">                                                                                              
		                    </td>
		                </tr>
		                <tr>
		                    <td>
		                        Web Hook
		                    </td>
		                    <td>
		                        <input style="color:black" class="form-control" type="text" id="WebHook" name="WebHook">                                                                                              
		                    </td>
		                </tr>		                               
		        </table>		        
		        </div> 			        	               	        
	  </div>
	  <div id="button">  
    	<input class="btn" type="submit" id="btnBuildAndDeploy" name=btnBuildAndDeploy value="Build & Deploy" style="height:50px;width:200px; margin: 0 auto">  
	</div> 	
	</form>
	<%-- <%
		if(request.getParameter("data")!=null)
		{
			S2I s=(S2I)request.getSession().getAttribute("session_obj");
					
	%>  
		java -jar <%=s.getTypeOfApplication()%><br>
		java -jar <%=s.getSourceRepository()%><br>
		java -jar <%=s.getDeployementOS()%><br>
		java -jar <%=s.getDeploymentServer()%><br>
		java -jar <%=s.getBuildFile()%><br>
		java -jar <%=s.getProjectName()%><br>
		java -jar <%=s.getBaseDockerImage()%><br>
		java -jar <%=s.getDockerImage()%><br>
		java -jar <%=s.getApplicationPort()%><br>
		java -jar <%=s.getWebHook()%><br>
		
	<%
		}
	%>	 --%>
</body>
</html>