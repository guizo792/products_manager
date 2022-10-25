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
	<div class="container col-md-8 col-md-offset-2 col-xs-12">
		<div class="card ">
			<div class="card-header bg-primary mb-3 text-center text-white">Editing a product</div>
			<div class="card-body border-primary .text-success">
				<form action="UpdateProduit.php" method="post">
					<div class="form-group">
						<label class="control-label">ID</label> <input type="text"
							name="id" value="${produit.getId()}" class="form-control"
							required /> <span></span>
					</div>
					<div class="form-group">
						<label class="control-label">Designation</label> <input
							type="text" name="designation"
							value="${produit.getDesignation()}" class="form-control" required />
						<span></span>
					</div>
					<div class="form-group">
						<label class="control-label">Price</label> <input type="text"
							name="prix" value="${produit.getPrix()}" class="form-control"
							required /> <span></span>
					</div>
					<div class="form-group">
						<label class="control-label">Quantity</label> <input type="text"
							name="quantite" value="${produit.getQuantite()}"
							class="form-control" required /> <span></span>
					</div>
					<div class="container">
						<div class="row">
							<div class="col text-center">
								<button type="submit" class="btn btn-primary">Enregistrer</button>
							</div>
							<div class="col text-center">
								<a href="/products_manager/index.php"
									class="text-white btn btn-warning" role="button">Back home</a>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>