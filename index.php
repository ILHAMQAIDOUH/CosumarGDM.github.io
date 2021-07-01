<?php 
require_once './views/includes/header.php';
require_once './autoload.php';
require_once './controllers/HomeController.php';


$home = new HomeController();

$pages = ['updateZ','recuperationDossierZ','ArchiveDZ','deleteDZ','SuppresionDossier','SuppresionEMP','Suppression','loginDelete','zemamraD','zemamra','recuperationDossier','ArchiveD','recuperationZ','deleteD','deleteZ','dossierlistZ','ArchiveZ','homeZ','Employe','Archive','index','exportD','home','add1','update','recuperation','delete','logout','profil','dossierlist','addD','updateD','deleteD','export'];

if(isset($_SESSION['logged']) && $_SESSION['logged'] === true){

	if(isset($_GET['page'])){
		if(in_array($_GET['page'],$pages)){
			$page = $_GET['page'];
			$home->index($page);
		}else{
			include('views/includes/404.php');
		}
	}else{
		$home->index('home');
	}


require_once './views/includes/footer.php';


}else if(isset($_GET['page']) && $_GET['page'] === 'register'){
	$home->index('register');
}else{
	$home->index('login');
}