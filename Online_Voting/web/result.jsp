<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}


/* Add padding to containers */
.container {
  padding: 40px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 85%;
  padding: 12px;
  margin: 4px 0 20px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 3px solid #f1f1f1;
  margin-bottom: 20px;
}


.login100-more {
  width: calc(95% - 560px);
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  position: relative;
  z-index: 1;
}

.container-login100 {
  width: 100%;  
  min-height: 100vh;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  background: #ffffff;
}


.limiter {
  width: 100%;
  margin: 0 auto;
}

/* Set a style for the submit button */
.btn {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 20px;
  width: 85%;
  height: 40px;
  border-radius: 10px;
  background: #6675df;

  font-family: Montserrat-Bold;
  font-size: 12px;
  color: #fff;
  line-height: 1.2;
  text-transform: uppercase;
  letter-spacing: 1px;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}


.wrap-login100 {
  width: 100%;
  background: #fff;
  overflow: hidden;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  align-items: stretch;
  flex-direction: row-reverse;

}

.btn:hover {
  background: #333333;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  text-align: center;
}


ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: white;
}

li {
  float: left;
}

li a, .dropbtn {
  display: inline-block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  border-radius: 20px;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: #6675df;
}

.active {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 30px;
  width: 60%;
  height: 45px;
  
  background: #6675df;

  font-family: Montserrat-Bold;
  font-size: 12px;
  color: #fff;
  line-height: 1.2;
  text-transform: uppercase;
  letter-spacing: 1px;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.active:hover {
  background: #333333;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}


.containerr {
  position: relative;
  width: 100%;
  height: auto;
  opacity: 0.4;
}



</style>
</head>
<body >
    
    <%
        String s1 = (String) session.getAttribute("adminname");
        

String a[] = new String[100];
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evoting", "root", "newpass");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select voter,count(voter) as c from voter group by voter");
int i=0;

while(rs.next()){
    a[i] = rs.getString("c");
    i++;
}

%>    
    
    
<ul>
     <li><a class="active" href="index.html">Home</a></li>
     <li style="float:right"><a href="admin.html">Admin</a></li>
     <li style="float:right"><a href="about.html">About</a></li>
     <li style="float:right"><a href="contact.html">Contact us</a></li> 
</ul>
      <div class="limiter">
		<div class="container-login100">
		       <div class="wrap-login100">
                           <form action="" method="post" style="max-width:1000px;margin:auto">
                                <center>
                                     <div class="container">
                                          <h1>Result</h1>
                                              <hr>    
                                                  <div>
                                                       <div class="reg" style="padding-top: 35px;">
                                                           <pre> 
                                                                <center>   <img src="images/bbjp.png" height="90x" width="90x"/> <%=a[4]%>  <img src="images/inc.png" height="90x" width="90x"/> <%=a[1]%>  <img src="images/aap.png" height="90x" width="90x"/> <%=a[3]%>    <img src="images/bsp.jpg" height="90x" width="90x"/> <%=a[0]%>   <img src="images/cpi.png" height="90x" width="90x"/> <%=a[2]%> </center>                                                                                        
                                                          </pre>
                                                     </div>
                                                 <hr>
                                             </div>
                                        <div class="container signin">
                                      </div>
                               </center>
                          </form>
                       </div>
                    <div class="containerr">
                 <img src="images/botom.jpg"  width="1320" height="170" >
              </div>         
	    </div>
       </div>
</body>
</html>
