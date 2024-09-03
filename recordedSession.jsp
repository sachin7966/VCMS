<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Base64" %>
<%@ page import="com.entities.Videos" %>
<%@ page import="java.util.List" %>

<%@page import="com.entities.Register" import="com.EnumOfUserType.User" %>

<%-- <%
Register user = (Register) session.getAttribute("authenticate-user");
if (user == null) {
	session.setAttribute("message", "You are not logged in !! please login first");
	response.sendRedirect("index.jsp");
	return;
}
 else{
   	if(user.getUserType() == User.TEACHER) {
		session.setAttribute("message","You are not Student ! please do not access this page");
		response.sendRedirect("index.jsp");
	}
}
%> --%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recorded Sessions</title>
    <link rel="stylesheet" href="assets/js/javascript.js">
    <link rel="stylesheet" href="assets/css/style3.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>

<body>
    <div class="container">
        <aside>
            <div class="top">
                <div class="logo">
                    <img src="assets/IMAGES/logo.png" alt="">
                    <h2>LEARN<span class="danger">EASY</span></h2>
                </div>

                <div class="close" id="close-btn">
                    <span class="material-symbols-sharp">
                        close
                    </span>
                </div>
            </div>

            <div class="sidebar">


                
                <%-- <%
				Register user = (Register) session.getAttribute("authenticate-user");
                
                if ( user.getUserType() == User.TEACHER) { %>
					<a href="teacher.jsp">
	                    <span class="material-symbols-sharp">
	                        grid_view
	                    </span>
	                    <h3>Dashboard</h3>
	                </a>             
	             <% } else if( user.getUserType() == User.STUDENT){ %>
					<a href="student.jsp">
	                    <span class="material-symbols-sharp">
	                        grid_view
	                    </span>
	                    <h3>Dashboard</h3>
	                </a>             
	             <% } %> --%>
				
				
	
                <a href="student.jsp">
                    <span class="material-symbols-sharp">
                        grid_view
                    </span>
                    <h3>Dashboard</h3>
                </a>

                <a href="#" >
                    <span class="material-symbols-sharp">
                        face
                    </span>
                    <h3>Me</h3>
                </a>

                <a href="#">
                    <span class="material-symbols-sharp">
                        Person
                    </span>
                    <h3>Students</h3>
                </a>

                <a href="#" class="active">
                    <span class="material-symbols-sharp">
                        inventory
                    </span>
                    <h3>recorded Session</h3>
                </a>

                <!-- <a href="#">
                    <span class="material-symbols-sharp">
                        Insights
                    </span>
                    <h3>Analytics</h3>
                </a> -->

                <!-- <a href="#">
                    <span class="material-symbols-sharp">
                        mail_outline
                    </span>
                    <h3>Messages</h3>
                    <span class="message-count">26</span>
                </a>
 -->
              <!--   <a href="#">
                    <span class="material-symbols-sharp">
                        settings
                    </span>
                    <h3>Settings</h3>
                </a>
 -->
                <!-- <a href="#">
                    <span class="material-symbols-sharp">
                        report_gmailerrorred
                    </span>
                    <h3>Reports</h3>
                </a> -->

                <a href="#">
                    <span class="material-symbols-sharp">
                        grid_view
                    </span>
                    <h3>Add account</h3>
                </a>
                <a href="LogoutServlet">
                    <span class="material-symbols-sharp">
                        logout
                    </span>
                    <h3>Log out</h3>
                </a>



            </div>
        </aside>

        <!------------------------End of aside ----------------------------->

        <main>
            <h1>Dashboard</h1>
            <div class="date">
                <input type="date">
            </div>
            <div class="insight" style="padding-bottom: 10vh;">
            <div class="sales">
			    <video width="320" height="240" controls>
			        <source src="assets/Videos/5_6237641021853796668.mp4" type="video/mp4">
			    </video>
			    <div class="middle">
			        <p style="text-align: center; align-items: center; font-size: 500;">Ultimate java Course | Practice Questions</p>
			    </div>
			</div>

            <div class="sales">
			    <video width="320" height="240" controls>
			        <source src="assets/Videos/5_6237641021853796670.mp4" type="video/mp4">
			    </video>
			    <div class="middle">
			        <p style="text-align: center; align-items: center; font-size: 500;">Ultimate java Course </p>
			    </div>
			</div>

            <div class="sales">
			    <video width="320" height="240" controls>
			        <source src="assets/Videos/5_6237641021853796671.mp4" type="video/mp4">
			    </video>
			    <div class="middle">
			        <p style="text-align: center; align-items: center; font-size: 500;">Ultimate java Course | Shorting Techniques</p>
			    </div>
			</div>

            <div class="sales">
			    <video width="320" height="240" controls>
			        <source src="assets/Videos/5_6237641021853796672.mp4" type="video/mp4">
			    </video>
			    <div class="middle">
			        <p style="text-align: center; align-items: center; font-size: 500;">Ultimate java Course</p>
			    </div>
			</div>

            <div class="sales">
			    <video width="320" height="240" controls>
			        <source src="assets/Videos/5_6237641021853796674.mp4" type="video/mp4">
<!-- 			        Your browser does not support the video tag.
 -->			    </video>
			    <div class="middle">
			        <p style="text-align: center; align-items: center; font-size: 500;">Ultimate java Course</p>
			    </div>
			</div>


	
		 <%-- 
			<%
			    List<Videos> videoList = (List<Videos>) request.getAttribute("data");
			    for (Videos videoEntity : videoList) {
			        byte[] videoData = videoEntity.getData();
			        String base64Video = Base64.getEncoder().encodeToString(videoData);
			        String videoType = videoEntity.getContentType();
			        String videoSrc = "data:" + videoType + ";base64," + base64Video;
			%>
		
				

        	                <div class="sales">
					    <video width="320" height="240" controls>
					        <source src="<%= videoSrc %>" type="<%= videoType %>">
					        Your browser does not support the video tag.
					    </video>
					    <video width="320" height="240" controls>
					        <source src="data:<%= videoEntity.getContentType() %>;base64,<%= base64Video %>" type="<%= videoEntity.getContentType() %>">
					        Your browser does not support the video tag.
	                    <div class="middle">
	                    	<p style="text-align: center; align-items: center; font-size: 500;">HCourse of Python </p>
	                    </div>
	                </div>
	                <!--                     end of sales           -->
				<%
				    }
				%>
            	
 --%>
<!--                 <div class="expenses">
                    <span class="material-symbols-sharp">
                        Bar_chart
                    </span>
                    <div class="middle">
                        <div class="left">
                            <h3>Purchased courses</h3>
                            <h1>105</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>61%</p>
                            </div>
                        </div>
                    </div>
                    <small class="text-muted">Last 24 hours</small>
                </div>
                end os expenses

                <div class="income">
                    <span class="material-symbols-sharp">
                        stacked_line_chart
                    </span>
                    <div class="middle">
                        <div class="left">
                            <h3>Completed </h3>
                            <h1> 12</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>

                            </svg>
                            <div class="number">
                                <p>4%</p>
                            </div>
                        </div>
                    </div>
                    <small class="text-muted">Last 24 hours</small>
                </div>
 -->
                <!--------------------End of income------------------>
            </div>
            <!-------------------end of insight--------------------->

<!--             <div class="recent-order">
                <h2>New added courses</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Courses number</th>
                            <th>Course name</th>
                            <th>Payment</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>38</td>
                            <td>Web Development</td>
                            <td>1500-/-</td>
                            <td class="warning">Pending</td>
                            <td class="primary">Detail</td>
                        </tr>
                        <tr>
                            <td>21</td>
                            <td>Android Development</td>
                            <td>500-/-</td>
                            <td class="warning">success</td>
                            <td class="primary">Detail</td>
                        </tr>
                        <tr>
                            <td>32</td>
                            <td>Data Cloud</td>
                            <td>1000-/-</td>
                            <td class="warning">Pending</td>
                            <td class="primary">Detail</td>
                        </tr>
                        <tr>
                            <td>43</td>
                            <td>Ethical Hacking</td>
                            <td>4000-/-</td>
                            <td class="warning">Success</td>
                            <td class="primary">Detail</td>
                        </tr>
                        <tr>
                            <td>34</td>
                            <td>Core Java</td>
                            <td>1400-/-</td>
                            <td class="warning">Pending</td>
                            <td class="primary">Detail</td>
                        </tr>
                        <tr>
                            <td>35</td>
                            <td>Frame Work</td>
                            <td>6000-/-</td>
                            <td class="warning">Success</td>
                            <td class="primary">Detail</td>
                        </tr>
                    </tbody>
                </table>
                <a href="#">Show All</a>
            </div> -->

        </main>
        <!----------------------------END OF MAIN-------------------->
        <div class="right">
            <div class="top">
                <button id="menu-btn">
                    <span class="material-symbols-sharp">
                        menu
                    </span>
                </button>
                <!-- <div class="theme-toggler">
                    <span class="material-symbols-sharp active">
                        light_mode
                    </span>
                    <span class="material-symbols-sharp">
                        dark_mode
                    </span>
                </div> -->
                <div class="profile">
                    <div class="info">
                        <p>Hey, <b><%=session.getAttribute("Name")%></b></p>
                        <small class="text-muted">Student</small>
                    </div>
                    <div class="profile-photo">
                        <img src="assets/IMAGES/photo_2023-04-20_13-03-151.jpg" alt="">
                    </div>
                </div>
            </div>
            <!------------------end of top---------------->
            <!-- <div class="recent-updates">
                <h2>Recent Notifications</h2>
                <div class="updates">
                    <div class="update">
                        <div class="profile-photo">
                            <img src="assets/IMAGES/profile-2.jpg" alt="">
                        </div>
                        <div class="message">
                            <p><b>Hey, Sachin</b> Please continue your Web d course</p>
                            <small class="text-muted">Update 2 min. ago</small>
                        </div>

                    </div>

                    <div class="update">
                        <div class="profile-photo">
                            <img src="assets/IMAGES/profile-2.jpg" alt="">
                        </div>
                        <div class="message">
                            <p><b>Hey Sachin,</b> Check out our new courses </p>
                            <small class="text-muted">Update 2 min. ago</small>
                        </div>

                    </div>

                    <div class="update">
                        <div class="profile-photo">
                            <img src="assets/IMAGES/profile-3.jpg" alt="">
                        </div>
                        <div class="message">
                            <p><b>Hey, Sachin </b> doing some research with Lana Rhoades</p>
                            <small class="text-muted">Update 2 min. ago</small>
                        </div>

                    </div>


                </div>
            </div>
 -->            <!----------------End of recent Updates-------------------->

            <!-- <div class="sale-analytics">
                <h2>Course Cart</h2>

                <div class="item offline">
                    <div class="icon">
                        <span class="material-symbols-sharp">
                            shopping_cart_checkout
                            </span>
                    </div>
                    <div class="right">
                        <div class="info">
                            <h3>Web Development</h3>
                          <small class="text-muted">Last 24 hours</small>
                        </div>
                      <h5 class="success">-39%</h5>
                      <h3>1500-/-</h3>
                    </div>
                </div>

                <div class="item online">
                    <div class="icon">
                        <span class="material-symbols-sharp">
                            local_mall
                            </span>
                    </div>
                    <div class="right">
                        <div class="info">
                            <h3>Ethical Hacking</h3>
                          <small class="text-muted">Last 24 hours</small>
                        </div>
                      <h5 class="danger">-19%</h5>
                      <h3>4000-/-</h3>
                    </div>
                </div>

                <div class="item customers">
                    <div class="icon">
                        <span class="material-symbols-sharp">
                          person
                            </span>
                    </div>
                    <div class="right">
                        <div class="info">
                            <h3>Android Dev.</h3>
                          <small class="text-muted">Last 24 hours</small>
                        </div>
                      <h5 class="success">-39%</h5>
                      <h3>500-/-</h3>
                    </div>
                </div>
                <div class="item add-product">
                    <div>
                        <span class="material-symbols-sharp">
                            add
                            </span>
                            <h3>Add Course</h3>
                    </div>
                </div>
            </div>
  -->       </div>
    </div>
    <script src="./JS/javascript.js"></script>
</body>
 
</html>