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
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

   <style>
   #result {
   position: absolute;
   width: 100%;
   max-width:870px;
   cursor: pointer;
   overflow-y: auto;
   max-height: 400px;
   box-sizing: border-box;
   z-index: 1001;
  }

    #weatherWidget .currentDesc {
        color: #ffffff!important;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }

    </style>
</head>

<body>




<%@ page import = "java.io.*,java.net.*,java.nio.charset.*,java.util.*,org.json.simple.*,org.json.simple.parser.*,org.apache.commons.io.IOUtils"%>
<%

try{


     String theUrl  = "http://localhost:8888/app1?name=1"; 
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


  File f = new File("webapps\\SuperHero\\data.json");  
f.delete()  ;
 f = new File("webapps\\SuperHero\\data.json"); 
FileWriter filewriter = new FileWriter(f, true);
filewriter.write(s); // Pass json object.
filewriter.flush();
filewriter.close();
  
        Iterator<Map.Entry> itr1 ;
        JSONArray ja = (JSONArray) jo.get("result"); 
	int i=0;
	

%>











    <!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="index.jsp"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                    </li>
                    <li class="menu-title">SuperHero</li><!-- /.menu-title -->
                    
                   
                   

                
                  

                    
                    
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
    <!-- /#left-panel -->
    <!-- Right Panel -->
	
	
	
	
	

    <div id="right-panel" class="right-panel">
       
	   
	     <div style="width:900px;">
   <h3 align="center">Search Data By name</h3>   
   <br /><br />
   <div align="center">
    <input type="text" name="search" id="search" placeholder="Search SuperHero Name" class="form-control" />
   </div>
   <ul class="list-group" id="result"></ul>
   <br />
  </div>
	   
	   
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-1">
                                        <i class="pe-7s-users"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><span class="count"><%=ja.size()%></span></div>
                                            <div class="stat-heading">Total SuperHero</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-2">
                                        <i class="ti-user"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><span class="count"><%=jo.get("male")%></span></div>
                                            <div class="stat-heading">Male SuperHero</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-3">
                                        <i class="ti-user"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><span class="count"><%=jo.get("female")%></span></div>
                                            <div class="stat-heading">Female SuperHero</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-4">
                                        <i class="ti-user"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><span class="count"><%=ja.size()-(Integer.parseInt((String)jo.get("female"))+Integer.parseInt((String)jo.get("male")))%></span></div>
                                            <div class="stat-heading">Other SuperHero</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Widgets -->
            
                
               
                <!-- Orders -->
                <div class="orders" style="width: 100%;" >
                    <div class="row">
                        <div class="col-xl-8">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="box-title">Orders </h4>
                                </div>
                                <div class="card-body--">
                                    <div class="table-stats order-table ov-h">
                                        <table class="table ">
                                            <thead>
                                                <tr>
                                                    <th class="serial">S.No</th>
                                                    <th class="avatar">SuperHero</th>
                                                    <th>ID</th>
                                                    <th>Name</th>
                                                    <th>Gender</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
											
											
											
											
											
											<%
											
											String iurl="";
										while(i<ja.size())
	{
		
		
		
		
		
		
		
		String d=ja.get(i).toString();
		jo =(JSONObject) parser.parse(d); 
		
		i++;
							%>					<tr>
                                                    
                                                    
													 <tr>
                                                    <td class="serial"><%=jo.get("id")%>.</td>
                                                    <td class="avatar">
                                                        <div class="round-img">
                                                            <a href="profile.jsp?id=<%=((String)jo.get("id")).trim()%>&url=<%=jo.get("url")%>"><img class="rounded-circle" src="<%=jo.get("url")%>" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td> <%=jo.get("id")%> </td>
                                                    <td>  <span class="name"> <%=jo.get("name")%></span> </td>
														<td>  <span class="name"> <%=jo.get("gender")%></span> </td>
                                                    <td>
                                                        <a href="profile.jsp?id=<%=((String)jo.get("id")).trim()%>&url=<%=jo.get("url")%>"><span class="badge badge-complete">view</span></a>
                                                    </td>
                                                </tr>
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

											
											
											
											
											
                                               
                                         
										 
										 
										 
										 
										 
										 
										 
										 
                                            </tbody>
                                        </table>
                                    </div> <!-- /.table-stats -->
                                </div>
                            </div> <!-- /.card -->
                        </div>  <!-- /.col-lg-8 -->

                        
                    </div>
                </div>
                <!-- /.orders -->
                
                
                    

                    
                       
               
                        
    </div>

               
                
               
                       
                           
                           
                            
                       
</body>
      

    <!-- /#right-panel -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

    <!--  Chart js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

    <!--Chartist Chart-->
    <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
    <script src="assets/js/init/weather-init.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
    <script src="assets/js/init/fullcalendar-init.js"></script>

    <!--Local Stuff-->
    <script>
$(document).ready(function(){
 $.ajaxSetup({ cache: false });
 $('#search').keyup(function(){
  $('#result').html('');
  $('#state').val('');
  var searchField = $('#search').val();
  var expression = new RegExp(searchField, "i");
  $.getJSON('data.json', function(data) {
   $.each(data.result, function(key, value){
    if (value.name.search(expression) != -1 || value.id.search(expression) != -1)
    {
     $('#result').append('<li class="list-group-item link-class"><img src="'+value.url+'" height="40" width="40" class="img-thumbnail" /> '+value.name+' | <span class="text-muted">'+value.gender+'</span><a href="profile.jsp?id='+value.id+'&url='+value.url+'"><span class="badge badge-complete">view</span></a>  </li>');
    }
   });   
  });
 });
 
 $('#result').on('click', 'li', function() {
  var click_text = $(this).text().split('|');
  $('#search').val($.trim(click_text[0]));
  $("#result").html('');
 });
});
</script>

</html>
