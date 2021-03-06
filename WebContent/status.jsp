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
	        Status de Pedidos
	        <small>Status de pedidos</small>
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
	        <li class="active">Status</li>
	      </ol>
	      <br />
	      <div class="form-group col-xs-6">
		  <label for="usr">CPF/CNPJ ou ID:</label>
		  <input type="text" class="form-control" id="usr" placeholder="">
		  <br/>
		  <button type="submit" class="btn btn-search">Pesquisar		 
		  </button>
		</div>
	    
	    </section>
	
	    <!-- Main content -->
	    <section class="content">
	    
	    <div class="row">
	        <div class="col-xs-12">
		          <div class="box">
		            <div class="box-header">
		              <h3 class="box-title">Status</h3>
		            </div>
		            <!-- /.box-header -->
		            <div class="box-body">
		            
		            <div class="box-body">
		              <table id="example" class="display" width="100%" cellspacing="0">
		                <thead>
		                <tr>
		                  <th>Quantidade</th>
		                  <th>Produto</th>
		                  <th>Cor</th>
		
		                </tr>
		                </thead>
		                <tbody>
		                <tr>
		                  <td>24</td>
		                  <td>Camiseta
		                  </td>
		                  <td>Branco</td>
		
		                </tr>
		                <tr>
		                  <td>158</td>
		                  <td>Camiseta
		                  </td>
		                  <td>Magenta</td>
		
		                </tr>
		                <tr>
		                  <td>86</td>
		                  <td>Camiseta
		                  </td>
		                  <td>Azul</td>
		                </tr>
		                </tbody>
		              </table>
		            </div>
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
	    	    "sProcessing": "Aguarde enquanto os dados s�o carregados ...",
	    	    "sLengthMenu": "Mostrar _MENU_ registros por pagina",
	    	    "sZeroRecords": "Nenhum registro correspondente ao criterio encontrado",
	    	    "sInfoEmtpy": "Exibindo 0 a 0 de 0 registros",
	    	    "sInfo": "Exibindo de _START_ a _END_ de _TOTAL_ registros",
	    	    "sInfoFiltered": "",
	    	    "sSearch": "Procurar",
	    	    "oPaginate": {
	    	       "sFirst":    "Primeiro",
	    	       "sPrevious": "Anterior",
	    	       "sNext":     "Pr�ximo",
	    	       "sLast":     "�ltimo"
	    	    }
	    	 }   
	    })
	</script>
	  
</body>
</html>
</html>