<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>2D5 | Home</title>
  <!-- Responsivo -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  
  <%@ include file="layouts/layoutCSS.jsp" %>
  
  <!-- jQuery 2.2.3 -->
<script src="assets/plugins/jQuery/jquery-3.2.1.min.js"></script>
  
</head>
<body class="hold-transition skin-purple sidebar-mini">

	<script src="assets/js/layout.js"></script>
	<div class="wrapper">
	
	  
	  <%@ include file="compartilhado/cabecalho.jsp" %>
	  
	  
  	  <%@ include file="compartilhado/menu.jsp" %>
	  
	  
	  <!-- Conteudo -->
	  <div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	      <h1>
	        Cadastrar Cliente
	        <small>Cadastro de novo Cliente</small>
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
	        <li class="active">Cadastrar Cliente</li>
	      </ol>
	    </section>
	    <section class="content">
	    
	  <ul class="nav nav-tabs">
	    <li class="active"><a data-toggle="tab" href="#pFisica">Pessoa Física</a></li>
	    <li><a data-toggle="tab" href="#pJuridica">Pessoa Jurídica</a></li>
	
	  </ul>

	  <div class="tab-content">
	    <div id="pFisica" class="tab-pane fade in active">
	    <form action="cadastrarPF" method="post">
             <div class="form-group col-lg-5 col-md-5 col-sm-7 col-3">
             
                  <label>Nome</label>
                  <input type="text" class="form-control" id="nome" placeholder="Nome">
                  <hr>
                  <label>CPF</label>
                  <input type="text" class="form-control" id="cpf" placeholder="Digite seu CPF">
                  <hr>
                  <label>E-mail</label>
                  <input type="text" class="form-control" id="email" placeholder="Email">
                  <hr>
                  <label>Telefone</label>
                  <input type="text" class="form-control" id="telefone" placeholder="Telefone">
                  <hr>
                  <label>Endereço</label>
                  <input type="text" class="form-control" id="endereco" placeholder="Endereço">
                  <hr>
               	<span class="input-group-btn">
	                <button type="submit" id="cadastrar" class="btn btn-primary">Cadastrar
	                </button>
              	</span>
	                  
	                </div>
	    </form>
	    </div>
	   
	   
	    <div id="pJuridica" class="tab-pane fade">
	              <div class="form-group col-lg-5 col-md-5 col-sm-7 col-3">
	                  <label>CNPJ</label>
	                  <input type="text" class="form-control" id="nome" placeholder="Digite o CNPJ">
	                  <hr>
	                  <label>Razão Social</label>
	                  <input type="text" class="form-control" id="cpf" placeholder="Razão Social">
	                  <hr>
	                  <label>CEP</label>
	                  <input type="text" class="form-control" id="email" placeholder="Digite o CEP">
	                  <hr>
	                  <label>Telefone</label>
	                  <input type="text" class="form-control" id="telefone" placeholder="Telefone">
	                  <hr>
	                  <label>Endereço</label>
	                  <input type="text" class="form-control" id="endereco" placeholder="Endereço">
	                  <hr>
	                  <label>E-mail</label>
	                  <input type="text" class="form-control" id="endereco" placeholder="Digite o E-mail">
	                  <hr>
		               	<span class="input-group-btn">
			                <button type="button" id="cadastrar2" class="btn btn-primary">Cadastrar
			                </button>
		              	</span>
	                  
	                </div>
	    </div>
    </div>
	    </section>
	    <!-- /.content -->
	  <!-- /.Conteudo -->
	  
	  

		</div>
	  <%@ include file="compartilhado/rodape.jsp" %>
	  
	  
	  <%@ include file="compartilhado/temas.jsp" %>
	  </div>
	<!-- ./wrapper -->
	
	<%@ include file="layouts/layoutJS.jsp" %>
	<script>
		$("#cadastrar").onsubmit(function() {
		swal("Cadastro Realizado com Sucesso! ;)", "ID do Cliente: 987654321", "success")
	});
		
	</script>
	
	<script>
		$("#cadastrar2").click(function() {
		swal("Cadastro Realizado com Sucesso! ;)", "ID do Cliente: 987654321", "success")
	});
		
	</script>
	
</body>
</html>
