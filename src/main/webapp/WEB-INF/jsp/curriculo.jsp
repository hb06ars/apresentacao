<!doctype html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="utf-8">
<meta name="author" content="Henrique Brandão">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="apple-touch-icon" href="images/logoIcone.png" sizes="180x180">
<link rel="icon" href="images/logoIcone.png" sizes="32x32" type="image/png">
<link rel="shortcut icon" href="images/logoIcone.png" type="image/ico">


</head>
<style type="text/css" media="print">
    @page 
    {
        size: auto; 
        margin: 0mm;
    }
</style>

<style>
.fa-instagram {
  padding: 10px;
  font-size: 30px;
  width: 60px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}
.fa-instagram:hover {
	background: white;
	color: #125688;
	text-decoration: none;
	border-style: solid;
	boder-color: #125688;
}
.fa-instagram {
  background: #125688;
  color: white;
}


.fa-linkedin {
  padding: 10px;
  font-size: 30px;
  width: 60px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}
.fa-linkedin:hover {
	background: white;
	color: #007bb5;
	text-decoration: none;
	border-style: solid;
	boder-color: #007bb5;
}
.fa-linkedin {
  background: #007bb5;
  boder-color: #007bb5;
  color: white;
}

.fa-facebook {
  padding: 10px;
  font-size: 30px;
  width: 60px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}
.fa-facebook:hover {
	background: white;
	color: #3B5998;
	text-decoration: none;
	border-style: solid;
	boder-color: #3B5998;
}
.fa-facebook {
  background: #3B5998;
  color: white;
}


.fa-whatsapp {
  padding: 10px;
  font-size: 30px;
  width: 60px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}
.fa-whatsapp:hover {
	background: white;
	color: #10B418;
	text-decoration: none;
	border-style: solid;
	boder-color: #10B418;
}
.fa-whatsapp {
  background: #10B418;
  color: white;
}


.bg {
  height: 100%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.h1{
color: #565D60
}

.h5{
color: #7C8588
}

.traco{
    max-width:20%;
	min-width:20%;
    height:3px;
    background:#7C8587;
}
.tracob{
    max-width:8%;
	min-width:8%;
    height:3px;
    background:#7C8587;
}

.texto{
	color: #4F5253;
}

</style>


<script>
var campo_global = "";

function abrirModalRedeSocial(campo, titulo){
	if(titulo == 'Facebook'){
		document.getElementById("titulo").innerHTML = '<a href="'+titulo+'" class="fa fa-facebook"></a> Digite seu '+titulo;
	}
	if(titulo == 'Instagram'){
		document.getElementById("titulo").innerHTML = '<a href="'+titulo+'" class="fa fa-instagram"></a> Digite seu '+titulo;
	}
	if(titulo == 'Linkedin'){
		document.getElementById("titulo").innerHTML = '<a href="'+titulo+'" class="fa fa-linkedin"></a> Digite seu '+titulo;
	}
	if(titulo == 'Whatsapp'){
		document.getElementById("textareaSocial").placeholder = '55(11)99999-9999'
		document.getElementById("titulo").innerHTML = '<a href="'+titulo+'" class="fa fa-whatsapp"></a> Digite seu '+titulo;
	}
	campo_global = campo;
	$("#modalSocial").modal().show();
	document.getElementById("textarea").value = "";
	document.getElementById("textarea").focus();
}

function abrirModal(campo, titulo){
	document.getElementById("titulo").innerHTML = titulo;
	campo_global = campo;
	$("#modal").modal().show();
	document.getElementById("textarea").value = "";
	document.getElementById("textarea").focus();
}

function marcador(){
	var texto = document.getElementById("textarea").value;
	document.getElementById("textarea").value = texto + "<br><i class='fa fa-check-circle'></i> ";
}

function negrito(){
	var texto = document.getElementById("textarea").value;
	document.getElementById("textarea").value = texto + "<b>digite seu texto em negrito aqui</b>";
}

function salvar(){
	var texto = document.getElementById("textarea").value;
	texto = texto.replaceAll('\n','<br>')
	if(campo_global == 'imagem_link'){
		var link = "<img onclick='abrirModal('imagem', 'Insira o Link da sua foto' )' style='cursor:pointer; box-shadow: 2px 2px 6px 2px; border-radius: 100% ;max-width:150px;max-height:150px;min-width:150px;min-height:150px' src='"+texto+"' >";
		document.getElementById(campo_global).innerHTML = link;
	} else{
		document.getElementById(campo_global).innerHTML = texto;	
	}
}

function salvarSocial(){
	var texto = document.getElementById("textareaSocial").value;
	texto = texto.replaceAll('\n','<br>')
	if(campo_global == 'texto_face'){
		var link = "<a href='https://www.facebook.com/"+texto+"' target=_blank class='fa fa-facebook'></a> "+texto;
		document.getElementById(campo_global).innerHTML = link;
	}
	if(campo_global == 'texto_whatsapp'){
		var original = texto;
		texto = texto.replace("(","").replace(")","").replace("-","").replace(" ","")
		var whats = 'https://api.whatsapp.com/send?phone='+texto;
		var link = "<a href='"+whats+"' target=_blank class='fa fa-whatsapp'></a> "+original;
		document.getElementById(campo_global).innerHTML = link;
	}
	if(campo_global == 'texto_instagram'){
		var link = "<a href='https://www.instagram.com/"+texto+"' target=_blank class='fa fa-instagram'></a> "+texto;
		document.getElementById(campo_global).innerHTML = link;
	}
	if(campo_global == 'texto_linkedin'){
		var link = "<a href='https://www.linkedin.com/in/"+texto+"' target=_blank class='fa fa-linkedin'></a> "+texto;
		document.getElementById(campo_global).innerHTML = link;
	}
}

function imprimir(){
	document.getElementById("btVoltar").style.display="none";
	document.getElementById("btSalvar").style.display="none";
	document.getElementById("btSalvar").style.visibility = "hidden";
	document.getElementById("btVoltar").style.visibility = "hidden";
	impressao();
	mostrarBt();
}

function impressao(){
	var restorepage = $('body').html();
	var printcontent = $('#pagina').clone();
	$('body').empty().html(printcontent);
	window.print();
	$('body').html(restorepage);
}

function mostrarBt(){
	document.getElementById("btVoltar").style.display="block";
	document.getElementById("btSalvar").style.display="block";
	document.getElementById("btSalvar").style.visibility = "visible";
	document.getElementById("btVoltar").style.visibility = "visible";
}

</script>


<body>

<!-- MODAL REDE SOCIAL ------------------------------------------------------------------------ -->
<div class="modal fade" id="modalSocial" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="titulo">Título do modal</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <textarea class="form-control" id="textareaSocial" rows="8" autofocus ></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
        <button type="button" class="btn btn-primary" onclick="salvarSocial()" data-dismiss="modal" >Salvar mudanças</button>
      </div>
    </div>
  </div>
</div>
<!-- MODAL REDE SOCIAL ------------------------------------------------------------------------ -->


<!-- MODAL ------------------------------------------------------------------------ -->
<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="titulo">Título do modal</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <textarea class="form-control" id="textarea" rows="8" autofocus ></textarea>
		<br>
        <button type="button" onclick="marcador()" class="btn btn-warning" >Inserir Marcador</button>
        <button type="button" onclick="negrito()" class="btn btn-dark" onclick="salvar()" >Negrito</button>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
        <button type="button" class="btn btn-primary" onclick="salvar()" data-dismiss="modal" >Salvar mudanças</button>
      </div>
    </div>
  </div>
</div>
<!-- MODAL ------------------------------------------------------------------------ -->









<!-- PAGINA ------------------------------------------------------------------------ -->
<div class="container-fluid" id="pagina" style="padding:30px">
    <div id="topo" class="bg row" style="background-image: url('https://img.freepik.com/vetores-gratis/fundo-de-formas-abstratas-triangulo-branco_1035-17544.jpg?size=626&ext=jpg')" >
        <div class='col-sm-3 col-md-3 col-lg-3'>
            <div style="cursor:pointer;" onclick="abrirModal('imagem_link', 'Insira o Link da sua foto' )" class="text-center form-group">
                <br>
				<span id="imagem_link">
					<img style="box-shadow: 2px 2px 6px 2px; border-radius: 100% ;max-width:150px;max-height:150px;min-width:150px;min-height:150px" src="https://www.w3schools.com/bootstrap4/paris.jpg" >
				</span>	
				<br>
            </div>
        </div>
		<div class='media col-sm-9 col-md-9 col-lg-9'>
            <div style="cursor:pointer;" onclick="abrirModal('texto_nome', 'Alterar o nome' )" class="h1 align-self-center form-group">
                <span id="texto_nome">Clique aqui e digite seu nome.</span>
            </div>
			
        </div>
    </div>
	 <div class="row">
        <div id="blocoEsquerda" class='col-sm-3 col-md-3 col-lg-3'>
            <div style="cursor:pointer;" onclick="abrirModal('texto_perfilPessoal', 'Alterar o perfil pessoal' )" id="perfilPessoal" class="h5 form-group">
                <br>
				<i class="fa fa-user"></i>
				PERFIL PESSOAL
				<div class="traco"></div>
            </div>
			<div class="texto">
				<span id="texto_perfilPessoal">Digite o texto que deseja para seu perfil profissional<span>
				<br>&nbsp <br>&nbsp
			</div>
			
			<div style="cursor:pointer;" onclick="abrirModal('texto_contato', 'Alterar o contato' )" id="contato" class="h5 form-group">
				<br>
				<i class="fa fa-phone"></i>
				CONTATO
				<div class="traco"></div>
            </div>
			<div class="texto">
				<span id="texto_contato">O contato aqui<span>
				<br>&nbsp <br>&nbsp
			</div>
			
			<div style="cursor:pointer;" onclick="abrirModal('texto_formacao', 'Alterar a Formação Escolar' )" id="formacao" class="h5 form-group">
                <br>
				<i class="fa fa-book"></i>
				FORMAÇÃO
				<div class="traco"></div>
            </div>
			<div class="texto">
				<span id="texto_formacao">Digite a sua formação escolar.<span>
				<br>&nbsp <br>&nbsp
			</div>
			
        </div>
		<div id="blocoDireita" class='col-sm-1 col-md-1 col-lg-1' style="background-color:white">
		</div>
		<div id="blocoDireita" class='col-sm-8 col-md-8 col-lg-8' style="background-color:#EFEFEF">
            <div style="cursor:pointer;" onclick="abrirModal('texto_habilidades', 'Alterar as Habilidades' )" id="habilidades" class="h5 form-group">
				<br>
				<i class="fa fa-check"></i>
				HABILIDADES
				<div class="tracob"></div>
            </div>
			<div class="texto">
				<span id="texto_habilidades">Digite suas habilidades aqui.<span>
				<br>&nbsp <br>&nbsp
			</div>
			
			<div style="cursor:pointer;" onclick="abrirModal('texto_experiencia', 'Alterar a experiência' )" id="experiencia" class="h5 form-group">
                <br>
				<i class="fa fa-clipboard"></i>
				EXPERIÊNCIA
				<div class="tracob"></div>
            </div>
			<div class="texto">
				<span id="texto_experiencia">Digite sua experiência aqui.<span>
				<br>&nbsp <br>&nbsp
			</div>
        </div>
		<div class='col-sm-12 col-md-12 col-lg-12' style="background-color:white">
		&nbsp
		</div>
		<div onclick="abrirModalRedeSocial('texto_face', 'Facebook' )" style="cursor:pointer" class='col-sm-12 col-md-12 col-lg-12' style="background-color:white">
			<span id="texto_face">
				<a href="#" class="fa fa-facebook"></a>
			</span>
		</div>
		<div onclick="abrirModalRedeSocial('texto_linkedin', 'Linkedin' )" style="cursor:pointer" class='col-sm-12 col-md-12 col-lg-12' style="background-color:white">
			<span id="texto_linkedin">
				<a href="#" class="fa fa-linkedin"></a>
			</span>
		</div>
		<div onclick="abrirModalRedeSocial('texto_instagram', 'Instagram' )" style="cursor:pointer" class='col-sm-12 col-md-12 col-lg-12' style="background-color:white">
			<span id="texto_instagram">
				<a href="#" class="fa fa-instagram"></a>
			</span>
		</div>
		<div onclick="abrirModalRedeSocial('texto_whatsapp', 'Whatsapp' )" style="cursor:pointer" class='col-sm-12 col-md-12 col-lg-12' style="background-color:white">
			<span id="texto_whatsapp">
				<a href="#" class="fa fa-whatsapp"></a>
			</span>
		</div>
		
    </div>
</div>
<!-- PAGINA ------------------------------------------------------------------------ -->


<!-- IMPRIMIR ------------------------------------------------------------------------ -->
<div class="container-fluid">
    <div id="topo" class="bg row" style="background-image: url('https://img.freepik.com/vetores-gratis/fundo-de-formas-abstratas-triangulo-branco_1035-17544.jpg?size=626&ext=jpg')" >
        <div class='col-sm-12 col-md-12 col-lg-12'><br></div>
        <div id="btVoltar" class='col-sm-3 col-md-3 col-lg-3'>
			<a type="button" class="btn btn-danger" href="\" data-dismiss="modal" >Voltar</a><br>&nbsp
		</div>
		<div id="btSalvar" class='col-sm-3 col-md-3 col-lg-3'>
			<button type="button" class="btn btn-primary" onclick="imprimir()" data-dismiss="modal" >Imprimir / Salvar</button><br>&nbsp
		</div>
	</div>
</div>
<!-- IMPRIMIR ------------------------------------------------------------------------ -->



  </body>
</html>
