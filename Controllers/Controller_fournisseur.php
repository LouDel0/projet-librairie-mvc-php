<?php

class Controller_fournisseur extends Controller
{
public function action_default()
{
$this->action_home();
}

public function action_home()
{
$this->render("home");
}


//Afficher tous les fournisseurs
public function action_all_fournisseur()
{
$m=Model::get_model();
$data=["fournisseurs"=>$m->get_all_fournisseurs()];
$this->render("all_fournisseur",$data);
}


//Afficher les fournisseurs par raison sociale
public function action_all_raisonSociale()
{
$m=Model::get_model();
$data=["raisonSociale"=>$m->get_all_raisonSociale()];
$this->render("all_raisonSociale",$data);
}

//Afficher les fournisseurs par localité


//Afficher les fournisseurs par pays
}

?>