<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container col-md-10 col-md-offset-1">
		<div class="card ">
			<div class="card-header bg-primary mb-3 text-white text-center">Search products</div>
			<div class="card-body border-primary text-primary">
				<form action="chercher.php" method="get" class="mb-2">
					<div class="input-group">
						<div class="input-group-prepend">
							<label class="input-group-text">Keyword</label>
						</div>
						<input type="text" name="motCle" value="${model.motCle }"
							class="form-control" placeholder="enter a keyword..." />
						<button type="submit" class="btn btn-primary">Search</button>
					</div>
				</form>
				<table class="table table-striped">
					<tr>
						<th>ID</th>
						<th>Designation</th>
						<th>Price</th>
						<th>Quantity</th>
					</tr>
					<c:forEach items="${model.produits }" var="p">
						<tr>
							<td>${p.getId() }</td>
							<td>${p.getDesignation() }</td>
							<td>${p.getPrix() }</td>
							<td>${p.getQuantite() }</td>
							<td><a onclick="return confirm('Etes vous sure?')"
								href="Supprimer.php?id=${p.getId() }"
								class="text-white btn btn-danger">Remove</a></td>
							<td><a href="Edit.php?id=${p.getId() }"
								class="text-white btn btn-warning">Edit</a></td>
						</tr>
					</c:forEach>

				</table>
				<div class="col text-center">

					<a href="/products_manager/Saisie.php"
						class="text-white btn btn-primary" role="button">Add
						Product</a>

				</div>
			</div>
		</div>
	</div>
</body>
</html>