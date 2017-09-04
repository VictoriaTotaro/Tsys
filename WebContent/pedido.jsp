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
	<%--   <jsp:include page=""></jsp:include> --%>
	  
	  
  	  <%@ include file="compartilhado/menu.jsp" %>
	  
	  
	  <!-- Conteudo -->
	  <div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	      <h1>
	        Novo Pedido
	        <small>Efetuar novo pedido</small>
	      </h1>
	      <small>Selecione o produto na cor desejada, a quantidade e o endereço de entrega</small>
	      <br />
    	  <ol class="breadcrumb">
	        <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
	        <li class="active">Novo Pedido</li>
	      </ol>
	    </section>
	
	    <!-- Main content -->
	    <section class="content">
	    
		<!-- /.row -->
	    
	    <div class="form-group col-xs-6">
		  <label for="usr">Cliente:</label>
		  <input type="text" class="form-control" id="usr" placeholder="CPF/CNPJ ou ID">
		</div>
	    
	    
        <table class="display">
        <thead>
           <tr>
                <th></th>
                <th>Produto</th>
                <th>Cor</th>
                <th>Quantidade</th>
            </tr>
        </thead>
        <tbody>

            <tr>
                <td></td>
                <td>Camiseta</td>
                <td>Azul</td>
                <td><input type="number" /></td>
            <tr>
                <td></td>
                <td>Camiseta</td>
                <td>Branco</td>
				<td><input type="number" /></td>
            </tr>
            <tr>
                <td></td>
                <td>Camiseta</td>
                <td>Magenta</td>
                <td><input type="number" /></td>

            </tr>
            <tr>
                <td></td>
                <td>Camiseta</td>
                <td>Branco</td>
                <td><input type="number" /></td>

            </tr>
            <tr>
                <td></td>
                <td>Camiseta</td>
                <td>Azul</td>
                <td><input type="number" /></td>

            </tr>
            <tr>
                <td></td>
                <td>Camiseta</td>
                <td>Magenta</td>
                <td><input type="number" /></td>
            </tr>
            
        </tbody>
    </table>
	    
	    
	
	    <br />
	    <h3>Endereço de entrega</h3>
	    
	    <div class="radio">
		  <label><input type="radio" name="optradio">Endereço de cadastro</label>
		  <br />
		  <label><input type="radio" name="optradio"> Novo endereço</label>
		</div>
		<br />
		<div class="form-group">
		  <input class="form-control" placeholder="Digite o novo endereço" />
		</div>
		
		<br />
		<!-- Indicates a successful or positive action -->
		<button type="button" id="finalizar" class="btn btn-success">Finalizar</button>
	    
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
	    	 },
		 columnDefs: [ {
	         orderable: false,
	         className: 'select-checkbox',
	         targets:   0
	     } ],
	     select: {
	         style:    'os',
	         selector: 'td:first-child'
	     },
	     order: [[ 1, 'asc' ]]
	 } );
	</script>
	<script>
	$("#finalizar").click(function() {
		swal("Pedido Recebido!", "N° da Ordem de Venda: 123456789", "success")
	});
		
	</script>
	<script type="text/javascript">
		window.onload = function () {
			var estoque = new CanvasJS.Chart("estoque",
			{
				title:{
					text: "Quantidade de Produto em estoque"
				},
                animationEnabled: true,
                
				legend:{
					verticalAlign: "center",
					horizontalAlign: "left",
/* 					fontSize: 20,
					fontFamily: "Helvetica"  */       
				},
				theme: "theme2",
				data: [
				{        
					type: "pie",       
/* 					indexLabelFontFamily: "Garamond",       
					indexLabelFontSize: 20, */
					indexLabel: "{label} {y}%",
					startAngle:-20,      
					showInLegend: false,
					
					toolTipContent:"{legendText} {y}%",
					dataPoints: [
						{  y: 58.95, legendText:"Camiseta Magenta", label: "Camiseta Magenta" , color: "#ff0066" },
						{  y: 8.95, legendText:"Camiseta Branca", label: "Camiseta Branca", color: "#E6E8FA" },
						{  y: 32.1, legendText:"Camiseta Azul", label: "Camiseta Azul", color: "#23238E" },
					]
				}
				]
			});
			
			var armazem = new CanvasJS.Chart("armazem",
					{
						title:{
							text: "Quantidade no Armazém"
						},     
		                animationEnabled: true,
						data: [
						{        
							type: "doughnut",
							startAngle: 60,                          
							toolTipContent: "{legendText}: {y} - <strong>#percentual% </strong>", 					
							showInLegend: false,
							dataPoints: [
								{y: 65899660, indexLabel: "Tecido Magenta #percent%", legendText: "Magenta", color: "#ff0066" },
								{y: 60929152, indexLabel: "Tecido Branco #percent%", legendText: "Branco", color: "#E6E8FA" },
								{y: 2175850,  indexLabel: "Tecido Azul #percent%", legendText: "Azul", color: "#23238E" }			
							]
						}
						]
					});
			
			
			
			estoque.render();
			armazem.render();
		}
	</script>
	<script type="text/javascript" src="assets/plugins/canvasjs/canvasjs.min.js"></script> 
</body>
</html>
