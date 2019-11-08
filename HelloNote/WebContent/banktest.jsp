<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
	box-sizing: border-box;
}

​
#myInput {
	background-image: url('/css/searchicon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	width: 100%;
	font-size: 16px;
	padding: 12px 20px 12px 40px;
	border: 1px solid #ddd;
	margin-bottom: 12px;
}

​
#myTable {
	border-collapse: collapse;
	width: 100%;
	border: 1px solid #ddd;
	font-size: 18px;
}

​
#myTable th, #myTable td {
/* 	text-align: left; */
	padding: 12px;
}

​
#myTable tr {
	border-bottom: 1px solid #ddd;
}

​
#myTable tr.header, #myTable tr:hover {
	background-color: #f1f1f1;
}
</style>
</head>
<body>
	<input type="text" id="myInput" onkeyup="myFunction()"
		placeholder="Search for names.." title="Type in a name"> ​
	<table id="myTable">
		
		<tr>
			<td align="left">월급통장<br> 
			110-425-616887
			</td>
			<td align="right">신한
			<br> 강연우
			</td>
		</tr>
		<tr>
			<td align="left">적금통장<br> 
			110-665-7894561
			</td>
			<td align="right">신한
			<br> 강연우
			</td>
		</tr>
		<tr>
			<td align="left">월세가상계좌<br> 
			11-44229-1248975
			</td>
			<td align="right">농협
			<br> 임요한
			</td>
		</tr>
	</table>
	<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>

</body>
</html>