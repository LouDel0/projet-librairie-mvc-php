Recherche par éditeur
<br><br>

<select name="select_editeur" onchange="afficheEditeur()">
	<option>Sélectionner un éditeur</option>
	<?php foreach ($editeur as $t):?>
		<option value="<?=$t->isbn?>"><?=$t->editeur?></option>
		<?php endforeach; ?>
	</select>