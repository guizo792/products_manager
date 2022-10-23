<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produits</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
	<p class=""></p>
	<div class="container col-md-10 col-md-offset-1">
		<div class="card ">
			<div class="card-header bg-primary">Recherche des produits</div>
			<div class="card-body border-primary text-primary">
				<form action="chercher.do" method="get">
					<div class="input-group">
						<div class="input-group-prepend">
							<label class="input-group-text">Mot Cle</label>
						</div>
						<input type="text" name="motCle" value="${model.motCle } class="form-control"
							placeholder="mot cle" />
						<button type="submit" class="btn btn-primary">Chercher</button>
					</div>
				</form>
				<table class="table table-striped">
					<tr>
						<th>ID</th>
						<th>Designation</th> 
						<th>Prix</th>
						<th>Quantite</th>
					</tr>
					<c:forEach items="${model.produits }" var="p">
						<tr>
							<td>${p.id }</td>
							<td>${p.designation }</td>
							<td>${p.prix }</td>
							<td>${p.quantite }</td>
						</tr>
					</c:forEach>

				</table>
			</div>
		</div>
	</div>
</body>
</html>