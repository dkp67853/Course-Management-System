<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Course Management System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
       <div class="row">
           <div class="col-lg-11 offset-1 jumbotron ">
               <h1 class="text-primary align-content-center">Course Management System</h1>
           </div>
       </div>       
       <div class="row">
           <div class="col-lg-11 offset-1">                    
              <ul class="nav nav-pills nav-fill">                  
               <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Admin Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="StudentLogin.jsp">Student Login</a>
                </li>                
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron">
                  <h3 class="text-primary">Student Login</h3><br />
                <form action="StudentLoginJ.jsp">
                    <div class="form-group">
                        <label for="inputName">Username</label>
                        <input class="form-control" type="text" name="name" placeholder="Enter Username" />
                    </div>

                    <div class="form-group">
                        <label for="inputPass">Password</label>
                        <input class="form-control" type="password" name="pass" placeholder="Enter Password" />
                    </div>                    

                    <button type="submit" class="btn btn-primary">Login</button>
                    <br>
                    <a href="StudentRegister.jsp">Student Registration</a>
                </form> 
           </div>
           </div>        
    </div>
    </body>
</html>