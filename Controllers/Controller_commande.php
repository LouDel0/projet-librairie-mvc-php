<?php

class Controller_commande extends Controller
{
public function action_default()
{
$this->action_home();
}

public function action_home()
{
$this->render("home");
}

public function action_all_commande()
{
 //echo 'action_all_commande<br>';

$m=Model::get_model();

// echo 'controller_commandes 2';

$data=["commandes"=>$m->get_all_commandes()];

// echo 'controller_commandes 3';

$this->render("all_commande",$data);

// echo 'controller_commandes 4';
}



}

?>