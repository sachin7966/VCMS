
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student-Dashboard</title>

    <link rel="stylesheet" href="assets/js/javascript.js">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/style3.css">
    <link rel="stylesheet" href="assets/css/drag.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <script src="assets/js/graph.js"></script>
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


                <a href="#" class="active">
                    <span class="material-symbols-sharp">
                        grid_view
                    </span>
                    <h3>Dashboard</h3>
                </a>

                <a href="#">
                    <span class="material-symbols-sharp">
                        quiz
                        </span>
                    <h3>Quiz</h3>
                </a>

                <a href="feedback.jsp">
                    <span class="material-symbols-sharp">
                        Person
                    </span>
                    <h3>feedback</h3>
                </a>


                <!-- <a href="#">
                    <span class="material-symbols-sharp">
                        mail_outline
                    </span>
                    <h3>Messages</h3>
                    <span class="message-count">0</span>
                </a>
 -->
                <a href="recordedSession.jsp">
                    <span class="material-symbols-sharp">
                        videocam
                        </span>
                    <h3>Recorded Session</h3>
                </a>

                <a href="#">
                    <span class="material-symbols-sharp">
                        play_circle
                        </span>
                    <h3>Online Session</h3>
                </a>

                <a href="#">
                    <span class="material-symbols-sharp">
                        grid_view
                    </span>
                    <h3>profile</h3>
                </a>

                <a href="#">
                    <span class="material-symbols-sharp">
                        Person
                    </span>
                    <h3>Help</h3>
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
            <div class="insight">
                <div class="sales">

                    <a href="recordedSession.jsp">
                    <div class="middle">
                        <div class="left">
                            <h2>Recorded Session</h2>
                            <!-- <h1> 145</h1>-->
                        </div>
                        <div class="progress">
                            <span class="material-symbols-sharp">
                                videocam
                                </span>
                        </div>
                    </div></a>
                    <!--   <small class="text-muted">Last 24 hours</small>-->
                </div>
                <!--                     end of sales           -->

                <div class="expenses">

                    <div class="middle">
                        <div class="left">
                            <h2>Live Session</h2>

                        </div>
                        <div class="progress">
                            <span class="material-symbols-sharp">
                                play_circle
                            </span>
                        </div>
                    </div>
                    <!-- <small class="text-muted">Last 24 hours</small>-->
                </div>
                <!--end os expenses-->

                <div class="income">

                    <a href="notes.jsp"><div class="middle">
                        <div class="left">
                            <h2>Notes </h2>

                        </div>
                        <div class="progress">
                            <span class="material-symbols-sharp">
                                add_notes
                                </span>
                        </div>
                    </div></a>
                    <!-- <small class="text-muted">Last 24 hours</small>-->
                </div>

                <!--------------------End of income------------------>
            </div>
            <!-------------------end of insight--------------------->

            <div class="recent-order">
              <!--  <h2>New added courses</h2>
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
                </table>-->





                <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                <a href="#">Show All</a>
            </div>

        </main>
        <!----------------------------END OF MAIN-------------------->
        <div class="right">
            <div class="top">
                <button id="menu-btn">
                    <span class="material-symbols-sharp">
                        menu
                    </span>
                </button>
                <div class="theme-toggler">
                    <span class="material-symbols-sharp active">
                        light_mode
                    </span>
                    <span class="material-symbols-sharp">
                        dark_mode
                    </span>
                </div>
                <div class="profile">
                    <div class="info">
                        <p>Hey, <b><%=session.getAttribute("Name")%></b></p>
                        <small class="text-muted">Student</small>
                    </div>
                    <div class="profile-photo">
                        <img src="assets/IMAGES/user.png" alt="">
                    </div>
                </div>
            </div>
            <!------------------end of top---------------->
           <!--  <div class="recent-updates">
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
                            <p><b>Hey Sachin,</b> Check out further video and  refernce </p>
                            <small class="text-muted">Update 2 min. ago</small>
                        </div>

                    </div>

                  


                </div>
            </div> -->
            <!----------------End of recent Updates-------------------->

          <!--  <div class="sale-analytics">
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
        </div>
    </div>-->
    <script src="assets/js/javascript.js"></script>
    <script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
</body>

</html>