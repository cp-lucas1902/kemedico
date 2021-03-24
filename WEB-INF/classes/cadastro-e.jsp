<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ include file="/WEB-INF/views/cabecalho.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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


<script>
	$(document).ready(function() {
		$("#select-esp1").select2({

		});
		$("#select-esp2").select2({

		});
		$("#select-plano").select2({

		});
		$("#select-meios").select2({

		});

	});
</script>
<title>Health Clinics - Cadastro do Especialista</title>
</head>
<body>



	<section id="recursos" class="caixa">
		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<br> <br> <br> <br>
					<div class="row"></div>


					<h2>Cadastro Especialista</h2>


					<form:form class="was-validated form-row"
						servletRelativeAction="${s:mvcUrl('cad_prof_bd').build()}"
						enctype="multipart/form-data" modelAttribute="profsaude"
						method="post">
						<div class="col-lg-6 mb-4">
							<label for="validationTextarea">Nome Completo: *</label> <input
								type="text" class="form-control is-invalid" name="nomeCompleto"
								id="validationTextarea" placeholder="Ex.:Jose Marto" required>
						</div>

						<div class="col-lg-4 mb-4">
							<label for="validationTextarea">Email: *</label> <input
								type="text" class="form-control is-invalid" name="email"
								id="validationTextarea" placeholder="Ex.:email@email.com"
								required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
						</div>
						<div class="col-md-2 mb-4">
							<label for="validationDefault04">Data de Nascimento*:</label> <input
								id="dtnasc" name="dataNasc" placeholder="DD/MM/AAAA"
								class="form-control input-md" required type="text"
								maxlength="10" OnKeyPress="formatar('##/##/####', this)"
								onBlur="showhide()" required>
						</div>
						<div class="col-lg-3 mb-4">
							<label for="validationTextarea">Senha: *</label> <input
								type="password" class="form-control is-invalid" name="senhaP"
								id="validationTextarea" required maxlength="12">
						</div>
						<div class="col-lg-3 mb-4">
							<label for="validationTextarea">Repita a Senha: *</label> <input
								type="password" class="form-control is-invalid"
								name="senhaRepetir" id="validationTextarea" required
								maxlength="12">
						</div>



						<div class="col-lg-3 mb-4">
							<label for="validationDefault05">Telefone Celular*:</label> <input
								id="prependedtext" name="numeroCelular" class="form-control"
								placeholder="XX XXXXX-XXXX" type="text" maxlength="13"
								pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
								OnKeyPress="formatar('## #####-####', this)" required>
						</div>
						<div class="col-lg-2 mb-3">
							<label for="validationServer03">CEP* :</label> <input type="text"
								class="form-control is-invalid" id="cep" name="CEP"
								placeholder="Ex.:00000-000" maxlength="8" required
								pattern="[0-9]+$">

						</div>
						<div class="col-lg-2 mb-3">
							<label for="validationServer04">Rua* :</label> <input type="text"
								class="form-control is-invalid" id="rua" name="rua"
								placeholder="Ex.:Cardoso dos Santos" required>

						</div>
						<div class="col-lg-2 mb-3">
							<label for="validationServer05">N* :</label> <input type="text"
								class="form-control is-invalid" id="validationServer05"
								name="numero" placeholder="Ex.:Apt 80" required>

						</div>
						<div class="col-lg-2 mb-3">
							<label for="validationServer05">Complemento* : </label> <input
								type="text" class="form-control is-invalid" name="complemento"
								id="validationServer05" placeholder="Ex.:Conjunto E" required>

						</div>
						<div class="col-lg-2 mb-3">
							<label for="validationServer05">Bairro* :</label> <input
								type="text" class="form-control is-invalid" id="bairro"
								name="bairro1" placeholder="Ex.:Sobradinho" required>

						</div>
						<div class="col-lg-2 mb-3">
							<label for="validationServer05">Cidade* :</label> <input
								type="text" class="form-control is-invalid" id="cidade"
								name="cidade1" placeholder="Ex.:São paulo" required>

						</div>
						<div class="col-lg-2 mb-3">
							<label for="validationServer03">UF* :</label> <input type="text"
								name="uf1" class="form-control is-invalid" id="uf" maxlength="2"
								placeholder="Ex: DF" required>
						</div>

						<div class="col-lg-2 mb-4">
							<label for="CRM">CRM: *</label> <input id="crm"
								class="form-control is-invalid" required="required" value=""
								name="crm" placeholder="Ex.:321321" maxlength="6"
								pattern="[0-9]+$">
						</div>
						<div class="col-lg-2 mb-4">
							<label for="validationDefault03">CPF*:</label> <input id="cpf"
								name="numeroCpf" placeholder="Apenas números"
								class="form-control input-md" required type="text"
								maxlength="14" required
								OnKeyPress="formatar('###.###.###-##', this)">
						</div>
						<div class="col-lg-3 mb-4">
							<label for="validationTextarea" id="ck">Especialização
								Principal: *</label>
							<form:select id="select-esp1" path="especializacao1.idEsp"
								class="custom-select" name="esp2" required="required">
								<option class="text-center"></option>
								<form:options class="text-center" items="${especialidades}"
									itemValue="idEsp" itemLabel="descEsp" />
							</form:select>



						</div>
						<div class="col-lg-3 mb-4">
							<label for="validationTextarea" id="ck">Especialização
								adicional(opcional): </label>
							<form:select id="select-esp2" path="especializacao2.idEsp"
								class="custom-select" name="esp2">
								<option class="text-center"></option>
								<form:options class="text-center" items="${especialidades}"
									itemValue="idEsp" itemLabel="descEsp" />
							</form:select>
						</div>
						<div class="col-lg-3 mb-4">
							<label for="validationTextarea" id="ck">Planos de Saúde
								Aceitos(opcional):</label>
							<form:select id="select-plano" path="planosParticular"
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
						<div class="col-lg-6 mb-4">
							<label for="validationTextarea">Nome do Consultório
								Particular(opcional): </label> <input type="text"
								class="form-control is-invalid" name="nomeConsultorio"
								id="validationTextarea" placeholder="Ex.:Jose Marto">
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
							<input name="fotoPerfilp" type="file" class="custom-file-input"
								id="exampleInputPassword1" accept="image/*"> <label
								for="exampleFileLang " for="validationDefault05"
								class="custom-file-label">Escolha uma foto de perfil</label>

						</div>






						<hr class="col-md-12 ">
						<!-- --------------------------------------- -->


						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="premium"
								id="exampleRadios1" value="false" checked> <label
								for="exampleRadios1"> Conta Gratuita </label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="premium"
								id="exampleRadios2" value="true"> <label
								for="exampleRadios2"> Conta Premium </label>
						</div>

						<div class="form-check-inline col-md-12" data-toggle="modal"
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
						<!--<div class="form-check">
                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                  <label class="form-check-label" for="exampleCheck1">* Eu aceito <a href="temos.html" class="text-warning">os termos e condições</a>, e a <a href="privacidade" class="text-warning">política de privacidade</a> da Doctoralia.</label>
                </div>-->
						<br>
						<button type="submit" class="btn btn-outline-light ">Cadastrar</button>
					</form:form>

				</div>

			</div>
		</div>
	</section>



	<!-- JavaScript (Opcional) -->
	<!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	<!--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>

<%@ include file="/WEB-INF/views/rodape.jsp"%>