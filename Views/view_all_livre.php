Résultat de votre recherche :
<br><br>
<!--<?=count($data)?> livre(s) trouvé(s)-->

<table class='table table-bordered table-responsive-md bg_table'>
	<thead>
		<tr>
			<th>ISBN</th>
			<th>Titre</th>
			<th>Thème</th>
			<th>Nombre de page</th>
			<th>Format</th>
			<th>Auteur</th>
			<th>Editeur</th>
			<th>Année d'édition</th>
			<th>Prix</th>
			<th>Langue</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($livres as $l):?>
			<tr>
				<td> <?=$l->isbn?> </td>
				<td> <?=$l->titre_livre?> </td>
				<td> <?=$l->theme_livre?> </td>
				<td> <?=$l->nbr_pages_livre?> </td>
				<td> <?=$l->format_livre?> </td>
				<td> <?=$l->nom_auteur?> <?=$l->prenom_auteur?></td>
				<td> <?=$l->editeur?> </td>
				<td> <?=$l->annee_edition?> </td>
				<td> <?=$l->prix_vente?> </td>
				<td> <?=$l->langue_livre?> </td>
			</tr>
		<?php endforeach; ?>
	</tbody>
</table>