<?php

class Controller_livre extends Controller
{
public function action_default()
{
$this->action_home();
}

public function action_home()
{
$this->render("home");
}

//Afficher tous les livres
public function action_all_livre()
{
$m=Model::get_model();
$data=["livres"=>$m->get_all_livres()];
$this->render("all_livre",$data);
}



// Afficher les livres par titre
public function action_all_titre()
{
$m=Model::get_model();
$data=["titres"=>$m->get_all_titre()];
$this->render("all_titre", $data);
}

public function action_livre()
{
$m=Model::get_model();
$data=["livres"=>$m->get_livre($_GET['titre'])];
$this->render("all_livre",$data);
}


// Afficher les livres par auteur
public function action_all_auteur()
{
$m=Model::get_model();
$data=["auteur"=>$m->get_all_titre()];
$this->render("all_auteur", $data);
}


// Afficher les livres par éditeur
public function action_all_editeur()
{
$m=Model::get_model();
$data=["editeur"=>$m->get_all_titre()];
$this->render("all_editeur", $data);
}
}

?>