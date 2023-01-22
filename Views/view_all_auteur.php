Recherche par auteur
	<br><br>
	
	<select name="select_auteur" onchange="afficheAuteur()">
	<option>Sélectionner un auteur</option>
	<?php foreach ($auteur as $l):?>
		<option value="<?=$l->isbn?>"><?=$l->nom_auteur?> <?=$l->prenom_auteur?></option>
		<?php endforeach; ?>
	</select>
	