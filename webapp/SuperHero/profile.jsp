<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SuperHero</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<%@ page import = "java.io.*,java.net.*,java.nio.charset.*,java.util.*,org.json.simple.*,org.json.simple.parser.*,org.apache.commons.io.IOUtils"%>

<body>
    <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.jsp"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                    </li>
                    <li class="menu-title">SuperHero Profile </li><!-- /.menu-title -->
                    
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header">
                    
                    <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                   
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="<%=(String)request.getParameter("url")%>" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa-user"></i>My Profile</a>

                            <a class="nav-link" href="#"><i class="fa fa-bell-o"></i>Notifications <span class="count">13</span></a>

                            <a class="nav-link" href="#"><i class="fa fa-cog"></i>Settings</a>

                            <a class="nav-link" href="#"><i class="fa fa-power-off"></i>Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </header><!-- /header -->
        <!-- Header-->

        <div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Dashboard</h1>
                            </div>
                        </div>
                    </div>
                 
                </div>
            </div>
        </div>

        <div class="content">
            <div class="animated fadeIn">

                <div class="ui-typography">
                    <div class="row">
                        <div class="col-md-12">


                            
                                    
									<%

										try{

											 ArrayList<String> arrli = new ArrayList<String>();
											 String theUrl  = "http://localhost:8888/app1?id="+(String)request.getParameter("id"); 
										   StringBuilder content = new StringBuilder();

											try
											{
											  URL url = new URL(theUrl);
											  URLConnection urlConnection = url.openConnection();
											  BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
											  String line;

											  while ((line = bufferedReader.readLine()) != null)
											  {
												content.append(line + "\n");
											  }
											  bufferedReader.close();
											  String s=content.toString();

											  
											  
											  
											  
											  

												JSONParser parser = new JSONParser();
												JSONObject jo = (JSONObject) parser.parse(s);


										  
										  
												Iterator<Map.Entry> itr1 ;
												JSONArray ja = (JSONArray) jo.get("result"); 
											int i=0;
									
											
												String d=ja.get(i).toString();
												jo =(JSONObject) parser.parse(d); 
												//out.println("id :"++"</br>");
												//out.println("name :"+jo.get("name")+"</br>");
												%>
												
												
												
												
												
												<div class="card">
                                <div class="card-header">
                                    <strong class="card-title" v-if="headerText"><%=jo.get("name")%></strong>  ID:<%=jo.get("id")%>
                                </div>













                                <div class="card-body">

                                  
                             
                                  <div class="vue-lists">
												<table class="table">
                          
                                
                               
                                    
                                    <tr><td align="center"><img class="rounded-circle" src="<%=(String)request.getParameter("url")%>" height=300px alt=""></td></tr>
									 <tr><td align="center"><strong class="card-title" v-if="headerText"><%=jo.get("name")%></strong></td></tr>
									 
							
                               
                               
                            </tbody>
                        </table>
                                       <%
												for (Object keyObj : jo.keySet()) {
																String key = (String)keyObj;
																Object valObj = jo.get(key);
                      
									
									   if(key.equals("appearance"))
										{
									
									%>
											

											
											
														
														<h3>Appearance</h3>
														<table class="table table-bordered">
														<tbody>
														
														
											
									<%
											
											JSONObject data=(JSONObject) valObj;
											%>
											<tr><td>eye-color </td><td><%=data.get("eye-color")%></td></tr>
											<tr><td>gender </td><td><%=data.get("gender")%></td></tr>
											<tr><td>race </td><td><%=data.get("race")%></td></tr>
											<tr><td>hair-color</td><td><%=data.get("hair-color")%></td></tr>
											<%
											JSONArray dataar = (JSONArray) data.get("weight"); 
											%>
											<tr><td>weight </td><td>
											<%
											Iterator<String> iterator = dataar.iterator();
											
											while(iterator.hasNext())
											{
												%>
												<%=iterator.next()+" "%>
											<%	
											}
											%>
											</td>
											</tr>
											
										<%
											 dataar = (JSONArray) data.get("height"); 
											 %>
											 <tr><td>height</td><td>
											 <%
											iterator = dataar.iterator();
											while(iterator.hasNext())
											{%>
										
												<%=iterator.next()+" "%>
											<%	
											}
											%>
											</td>
											</tr>
											 </tbody>
														</table>
											
											
							
							<%
										}
								%>	   
									   
									   
										
										
											
											<%
													if(key.equals("powerstats"))
													{
														%>
														
														<div>
														<h3>Powerstats</h3>
														<table class="table table-bordered">
														<tbody>
														
														<%
														JSONObject data=(JSONObject) valObj;
														%>
														<tr><td>strength </td><td><%=data.get("strength")%></td></tr>
														<tr><td>durability </td><td><%=data.get("durability")%></td></tr>
														<tr><td>combat </td><td><%=data.get("combat")%></td></tr>
														<tr><td>power </td><td><%=data.get("power")%></td></tr>
														<tr><td>speed </td><td><%=data.get("speed")%></td></tr>
														<tr><td>intelligence</td><td><%=data.get("intelligence")%></td></tr>
														
														
														
														 </tbody>
														</table>
														</div>
														
														
												<%		
													}
											
											
												%>
										
										
										
										
											<%
											
											if(key.equals("work"))
											{
											
												%>
													<div>
														<h3>Work</h3>
														<table class="table table-bordered">
														<tbody>
												<%	
													JSONObject data=(JSONObject) valObj;
													%>
													<tr><td>occupation </td><td><%=data.get("occupation")%></td></tr>
													<tr><td>base </td><td><%=data.get("base")%></td></tr>
													</tbody>
														</table>
													</div>
												<%
											}
											%>
										
											
                          
											<%
											
													if(key.equals("biography"))
													{
													  
													  %>
														<div>
														<h3>Biography</h3>
														<table class="table table-bordered">
														<tbody>
													  <%
													 
														JSONObject data=(JSONObject) valObj;
														%>
														<tr><td>place-of-birth </td><td><%=data.get("place-of-birth")%></td></tr>
														<tr><td>first-appearance </td><td><%=data.get("first-appearance")%></td></tr>
														<tr><td>publisher </td><td><%=data.get("publisher")%></td></tr>
														<tr><td>alignment </td><td><%=data.get("alignment")%></td></tr>
														<tr><td>full-name </td><td><%=data.get("full-name")%></td></tr>
														<tr><td>alter-egos </td><td><%=data.get("alter-egos")%></td></tr>
														<tr><td>aliases </td><td>
														<%
														JSONArray dataar = (JSONArray) data.get("aliases"); 
														Iterator<String> iterator = dataar.iterator();
														while(iterator.hasNext())
														{
															%>
															<%=iterator.next()%>
															<%
														}
														
														
														%>
														</td></tr>
														</tbody>
														</table>
													</div>
														<%
													}
													%>
													
											
												<%
												
												if(key.equals("connections"))
												{
													%>
													<div>
														<h3>Connections</h3>
														<table class="table table-bordered">
														<tbody>
													<%
													JSONObject data=(JSONObject) valObj;
													%>
													<tr><td>relatives</td><td><%=data.get("relatives")%></td></tr>
													
													
													
														</tbody>
														</table>
													</div>
													<%
												}
												
												%>
										
									
									
									
									<%
									
					}
		
		 
		
	

  
  
  
  
  
  
    }
    catch(Exception e)
    {
      e.printStackTrace();
    } 

  
}
catch(Exception e){}
									
									
									%>
									
									
    

								</div>
</div>


</div>
</div>
</div>



</div><!-- .animated -->
</div><!-- .content -->

    <div class="clearfix"></div>

   

</div><!-- /#right-panel -->

<!-- Right Panel -->

<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="assets/js/main.js"></script>


</body>
</html>
