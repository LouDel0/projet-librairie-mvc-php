function afficheTitre(){
    let isbn = document.querySelector("select[name='select_titre']").value;
    window.location.href="http://localhost:8080/librairie_mvc/?controller=livre&action=livre&titre=" + isbn;
}

function afficheAuteur(){
    let isbn = document.querySelector("select[name='select_auteur']").value;
    window.location.href="http://localhost:8080/librairie_mvc/?controller=livre&action=livre&auteur=" + isbn;
}

function afficheEditeur(){
    let isbn = document.querySelector("select[name='select_editeur']").value;
    window.location.href="http://localhost:8080/librairie_mvc/?controller=livre&action=livre&auteur=" + isbn;
}