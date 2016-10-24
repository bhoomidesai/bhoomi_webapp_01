<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
 <%@ include file="head.jsp" %>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6">
           <div class="well well-sm">
                <form class="form-horizontal" method="post">
                    <fieldset>
                        <legend class="text-center header">Contact us</legend>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-1 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="fname" name="name" type="text" placeholder="First Name" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-1 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="lname" name="name" type="text" placeholder="Last Name" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-1 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="email" name="email" type="text" placeholder="Email" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-1 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="phone" name="phone" type="text" placeholder="Contact no." class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-1 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                            <div class="col-md-8">
                                <textarea class="form-control" id="message" name="message" placeholder="Enter your massage for us here we are waitng for your queries" rows="8"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                               <button class="button button2">View</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
          
                  </div>
        <div class="col-md-6">
            <div>
                <div class="panel panel-default">
                    <div class="text-center header"> <legend class="text-center header"><b>Our Office</b></legend></div>
                    <div class="panel-body text-center">
                    <img src="${cp }/resources/images/niit.jpg" style="height:310px; width:80%"></div>
                        
                        <div align="center">
                        <h4>Address</h4>
                        201. Time Square Building<br />
                        fatehgunj,<br />
                        Vadodara, Gujarat<br />
                        </div>
                        <hr />
                    </div>
                </div>
            </div>
        </div>
    </div>

<%@ include file="foot.jsp" %>

