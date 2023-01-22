    Recherche par titre
	<br><br>
	
	<select name="select_titre" onchange="afficheTitre()">
	<option>Sélectionner un titre</option>
	<?php foreach ($titres as $t):?>
		<option value="<?=$t->isbn?>"><?=$t->titre_livre?></option>
		<?php endforeach; ?>
	</select>
	



