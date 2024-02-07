<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Map Application</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>
<a href="/spring_web/welcome">Back</a>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
<div align="center">
<table class="table table-bordered data-table responsive" style="width:100%">
                 <thead>
            <tr>
                <th>No</th>
                <th>Name</th>
                
                
                <!--<th width="100px">Action</th>-->
            </tr>
                 </thead>
                 <tbody>
                 <c:forEach var="map" items="${mapList}">
                 <tr>
                 <td><c:out value="${map.map_id}" /></td>
                 <td><a href="/spring_web/map?map_id=<c:out value="${map.map_id}" />"><c:out value="${map.name}" /></a></td>

                 </tr>
</c:forEach>
                 </tbody>
                 </table>
                  

                </div>
                <!-- /.container-fluid -->


            </div>
            <!-- End of Main Content -->
            <script type="text/javascript">
            $(document).ready( function () {
    
    var table = $('.data-table').DataTable();
    
  });
</script>

</body>
</html>