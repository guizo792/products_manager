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
			<div class="card-header bg-primary mb-3 text-center text-white">Confirmation</div>
			<div class="card-body border-primary .text-success">
				<div class="form-group">
					<label>ID: </label> <label>${produit.getId()}</label>
				</div>
				<div class="form-group">
					<label>Designation: </label> <label>${produit.getDesignation()}</label>
				</div>
				<div class="form-group">
					<label>Price: </label> <label>${produit.getPrix()}</label>
				</div>
				<div class="form-group">
					<label>Quantity: </label> <label>${produit.getQuantite()}</label>
				</div>
				<div class="container">
					<div class="row">
						<div class="col text-center">
							<a href="/products_manager/index.php"
								class="text-white btn btn-warning" role="button">Terminer</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>