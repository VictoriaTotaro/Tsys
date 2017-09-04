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
	        Fornecedores
	        <small>Lista de Fornecedores</small>
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
	        <li class="active">Fornecedores</li>
	      </ol>
	    </section>
	
	    <!-- Main content -->
	    <section class="content">
	    
	    <div class="row">
	        <div class="col-xs-12">
		          <div class="box">
		            <div class="box-header">
		              <h3 class="box-title">Fornecedores</h3>
		            </div>
		            <!-- /.box-header -->
		            <div class="box-body">
		              <table class="table table-bordered table-hover">
		                <thead>
		                <tr>
		                  <th>Nome</th>
		                  <th>Localização</th>
		                  <th>Matéria-Prima Fornecida</th>
		                  <th>Valor em R$</th>
		
		                </tr>
		                </thead>
		                <tbody>
			                <tr>
			                  <td>Fábrica Helvetia</td>
			                  <td>R. Vítor Hugo, 371 - Canindé, São Paulo - SP, 03031-010</td>
			                  <td>Tecido</td>
			                  <td>350,00</td>
			                </tr>
			                <tr>
			                  <td>Werner Fábrica Tecidos</td>
			                  <td> R. Tangará, 182 - Vila Mariana, São Paulo - SP, 04019-030</td>
			                  <td>Tecido</td>
			                  <td>370,00</td>
			                </tr>
			                <tr>
			                  <td>Dimasol</td>
			                  <td> R. Maria Domitila, 433 - Brás, São Paulo - SP, 03003-010</td>
			                  <td>Linha</td>
			                  <td>60,00</td>
			                </tr>
	        		        <tr>
			                  <td>Itema Indústria</td>
			                  <td>R. Agostinho Gomes, 1515 - Ipiranga, São Paulo - SP, 04206-000</td>
			                  <td>Linha</td>
			                  <td>55,00</td>
			                </tr>
						</tbody>
		              </table>
		            </div>
		            <!-- /.box-body -->
		          </div>
		          <!-- /.box -->
		
		     	</div>
	        <!-- /.col -->
      	</div>
      	<span class="input-group-btn">
		    <button type="submit" class="btn btn-primary">Gerar Relatorio
		    </button>
		</span>
	    
	    
	    </section>
	    <!-- /.content -->
	  </div>
	  <!-- /.Conteudo -->
	  
	  
	  
	  <%@ include file="compartilhado/rodape.jsp" %>
	  
	  
	  <%@ include file="compartilhado/temas.jsp" %>
	</div>
	<!-- ./wrapper -->
	
	<%@ include file="layouts/layoutJS.jsp" %>
	
		<script>
	 $('table').DataTable({
	      'paging'      : true,
	      'lengthChange': false,
	      'searching'   : false,
	      'ordering'    : true,
	      'info'        : true,
	      'autoWidth'   : false,

	      "oLanguage": {
	    	    "sProcessing": "Aguarde enquanto os dados são carregados ...",
	    	    "sLengthMenu": "Mostrar _MENU_ registros por pagina",
	    	    "sZeroRecords": "Nenhum registro correspondente ao criterio encontrado",
	    	    "sInfoEmtpy": "Exibindo 0 a 0 de 0 registros",
	    	    "sInfo": "Exibindo de _START_ a _END_ de _TOTAL_ registros",
	    	    "sInfoFiltered": "",
	    	    "sSearch": "Procurar",
	    	    "oPaginate": {
	    	       "sFirst":    "Primeiro",
	    	       "sPrevious": "Anterior",
	    	       "sNext":     "Próximo",
	    	       "sLast":     "Último"
	    	    }
	    	 }   
	    })
	</script>
	
</body>
</html>
