<?php

    class Model 
    {   // Début de la Classe

        private $bd ;
        
        private static $instance = null ;

        /*
         * Constructeur créant l'objet PDO et l'affectant à $bd
         */
        private function __construct() {  // Fonction qui sert à faire le lien avec la BDD

            $dsn = "mysql:host=localhost;dbname=gestionlibrairie"  ;   // Coordonnées de la BDD
            $login = "root" ;   // Identifiant d'accès à la BDD
            $mdp = "" ; // Mot de passe d'accès à la BDD
            $this->bd = new PDO($dsn, $login, $mdp) ;
            $this->bd->query("SET NAMES 'utf8'") ;
            $this->bd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION) ;

        }


        // get_model()

        public static function get_model() {    // Fonction qui sert à créer une instance de Model pour l'appeler dans chaque Controller (équivalent de $connex)
            if (is_null(self::$instance))
            {
                self::$instance = new Model() ;
            }
            return self::$instance ;
        }



        //Connexion livre
        public function get_all_livres() {
            $r = $this->bd->prepare("SELECT * FROM livre order by titre_livre" ) ;
            $r->execute() ;
            return $r->fetchAll(PDO::FETCH_OBJ) ;
        }

        public function get_all_titre() {
            $r = $this->bd->prepare("SELECT * FROM livre order by titre_livre" ) ;
            $r->execute() ;
            return $r->fetchAll(PDO::FETCH_OBJ) ;
        }

        public function get_livre($isbn) {
            $r = $this->bd->prepare("SELECT * FROM livre WHERE isbn=:isbn" ) ;
            $r->bindParam('isbn', $isbn, PDO::PARAM_INT);
            $r->execute() ;
            return $r->fetchAll(PDO::FETCH_OBJ) ;
        }



        //Connexion fournisseur
        public function get_all_fournisseurs() {
            $r = $this->bd->prepare("SELECT * FROM fournisseur order by raison_social" ) ;
            $r->execute() ;
            return $r->fetchAll(PDO::FETCH_OBJ) ;
        }


        //Connexion commande
        public function get_all_commandes() {
            $r = $this->bd->prepare("SELECT * FROM commande INNER JOIN livre ON commande.isbn = livre.isbn INNER JOIN fournisseur ON commande.code_fournisseur = fournisseur.code_fournisseur" ) ;
            $r->execute() ;
            return $r->fetchAll(PDO::FETCH_OBJ) ;
        }


    }   // Fin de la Classe