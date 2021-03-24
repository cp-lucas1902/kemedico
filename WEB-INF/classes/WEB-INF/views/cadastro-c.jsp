<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ include file="/WEB-INF/views/cabecalho.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<!-- Meta tags Obrigatórias -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

<!-- HTML5Shiv -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->

<!-- Estilo customizado -->
<link rel="stylesheet" type="text/css"
	href='<c:url value = "/resources/css/estilo.css"></c:url>'>
<link
	href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-theme/0.1.0-beta.10/select2-bootstrap.css">

<script
	src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.full.js"></script>
<script>
	$(document).ready(function() {
		$("#select-especialidades").select2({

		});
		$("#select-plano").select2({

		});
		$("#select-meios").select2({

		});
	});
</script>
<script src='<c:url value = "/resources/js/cep.js"></c:url>'></script>
<title>Health Clinics - Cadastro E</title>
</head>
<body>



	<section id="recursos" class="caixa">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<br> <br> <br>
					<h2>Cadastro Hospital/Clínica</h2>
					<form:form class="was-validated"
						servletRelativeAction="${s:mvcUrl('cad_cli_bd').build()}"
						modelAttribute="clinica" enctype="multipart/form-data">
						<div class="form-row">
							<div class="col-md-4 mb-3">
								<label for="validationDefault01">Nome Hospital/Clínica*:</label>
								<input type="text" class="form-control" id="validationDefault01"
									placeholder="Ex.:Hospital de Base" value="" required="required"
									name="nomeCompleto" />
							</div>
							<div class="col-md-2 mb-3">
								<label for="validationDefault02">Email*:</label> <input
									class="form-control input-text" id="validationDefault02"
									placeholder="email@email.com" value="" type="email"
									required="required" name="email"
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" />
							</div>
							<div class="col-md-2 mb-3">
								<label for="validationDefault03">CNPJ*:</label> <input
									type="text" class="form-control" id="validationDefault03"
									placeholder=" xx.xxx.xxx/xxxx-xx" required="required"
									name="cnpj" maxlength="14" pattern="[0-9\s]+$" />
							</div>
							<div class="col-md-2 mb-3">
								<label for="validationDefault04">Telefone Fixo*:</label> <input
									type="text" class="form-control" id="validationDefault04"
									placeholder="(xx) xxxx-xxxx" required="required"
									name="numeroFixo" maxlength="11" pattern="[0-9\s]+$">
							</div>
							<div class="col-md-2 mb-3">
								<label for="validationDefault05">Telefone Celular*:</label> <input
									type="text" class="form-control" id="validationDefault05"
									placeholder="(xx) xxxx-xxxx" required="required"
									name="numeroCelular" maxlength="10" pattern="[0-9\s]+$">
							</div>
						</div>
						<hr class="my-4">



						<div class="form-row">

							<div class="col-md-2 mb-3">
								<label for="validationServer03">CEP*:</label> <input type="text"
									class="form-control is-invalid" id="cep" placeholder="" name="CEP"
									required>

							</div>
							<div class="col-md-3 mb-3">
								<label for="validationServer04">Rua*:</label> <input type="text"
									class="form-control is-invalid" id="rua" placeholder="" name="rua"
									required>

							</div>
							<div class="col-md-2 mb-3">
								<label for="validationServer05">Bairro*:</label> <input
									type="text" class="form-control is-invalid" id="bairro" name="bairro1"
									placeholder="" required>

							</div>
							<div class="col-md-2 mb-3">
								<label for="validationServer05">Cidade*:</label> <input
									type="text" class="form-control is-invalid" id="cidade" name="cidade1"
									placeholder="" required>

							</div>
							<div class="col-md-2 mb-3">
								<label for="validationServer05">UF*:</label> <input type="text"
									class="form-control is-invalid" id="uf" placeholder="Ex:DF" name="uf1"
									required>

							</div>
							<div class="col-md-3 mb-3">
								<label for="validationServer05">Numero*:</label> <input
									type="text" class="form-control is-invalid" name="numeroLocal"
									placeholder="" required>

							</div>
							<div class="col-md-3 mb-3">
								<label for="validationServer05">Complemento*:</label> <input
									type="text" class="form-control is-invalid" name="complemento"
									placeholder="" required>

							</div>


							<div class="col-md-2 ">
								<label for="validationDefault05">Senha*:</label> <input
									type="password" class="form-control" id="validationDefault05"
									placeholder="Informe sua senha" name="senhaP" required>
							</div>
							<div class="col-md-2 ">
								<label for="validationDefault05">Repetir Senha*:</label> <input
									type="password" class="form-control" id="validationDefault05"
									placeholder="Repita ela por favor" name="senhaRepetir" required>
							</div>

							<div class="col-lg-3 mb-4">
								<label for="validationTextarea" id="ck">Especialidades
									da Clinica:*</label>
								<form:select id="select-especialidades" path="especialidades"
									class="custom-select" name="especialidades" required="required"
									multiple="true">
									<option class="text-center"></option>
									<form:options class="text-center" items="${especialidades}"
										itemValue="idEsp" itemLabel="descEsp" />
								</form:select>
							</div>
							<div class="col-lg-3 mb-4">
								<label for="validationTextarea" id="ck">Planos de Saúde
									Aceitos(opcional):</label>
								<form:select id="select-plano" path="planos"
									class="custom-select" name="planos" multiple="true"
									itemLabel="selecione pelo menos um">
									<form:options items="${planos}" itemValue="id"
										itemLabel="nomePlano" />
								</form:select>
							</div>
							<div class="col-lg-3 mb-4">
								<label for="validationTextarea" id="ck">Meios de
									Pagamento(opcional):</label>
								<form:select id="select-meios" path="meiosPagamento"
									class="custom-select" name="planos" multiple="true"
									itemLabel="selecione pelo menos um">
									<form:options items="${meios}" itemValue="idMeio"
										itemLabel="descMeio" />
								</form:select>
							</div>
							<div class="col-md-2 mb-3">

							<div class="form-group">
								<label for="validationTextarea">Preço da consulta *: </label>
								<form:select class="custom-select" required="required"
									name="cifroes" path="cifroes.cifroes">
									<form:options items="${cifroes}"
										itemLabel="faixaPrecos" itemValue="cifroes" />

								</form:select>
							</div>
						</div>
							<hr class="col-md-12 ">
							<div class="custom-file col-md-3 ">
								<input name="fotoPerfilP" type="file" class="custom-file-input"
									id="exampleInputPassword1" accept="image/*"> <label
									for="exampleFileLang " for="validationDefault05"
									class="custom-file-label">Escolha uma foto de perfil</label>

							</div>




							<div class="col-sm-5 text-center ">
								<label class="radio" for="radios-0"> <input type="radio"
									name="convenio" id="convenio" value="nao" required>
									Conta Gratuita
								</label> <label class="radio p-2 " for="radios-1"> <input
									type="radio" name="convenio" id="convenio" value="sim">
									Conta Premium
								</label>
							</div>
							<div class="form-check  col-md-12 p-3" data-toggle="modal"
								data-target="#exampleModal ">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label
									class="form-check-label text-white" for="exampleCheck1"><a
									href="" class="text-white">* Eu aceito os termos e
										condições, e a política de privacidade da kemedico.</a></label>
							</div>
							<div class="modal fade" id="exampleModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title " id="exampleModalLabel"
												style="color: black">Termo de autorização!</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body ">
											Eu concordo<br>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Fechar</button>

										</div>
									</div>
								</div>
							</div>
							<button type="submit" class="btn btn-outline-light">Cadastrar</button>




						</div>

					</form:form>

				</div>
			</div>
		</div>

	</section>



	<!-- JavaScript (Opcional) -->
	<!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	<!--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>-->
</body>
</html>

<%@ include file="/WEB-INF/views/rodape.jsp"%>