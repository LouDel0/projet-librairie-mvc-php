Résultat de votre recherche :
<br/>
<!--<?=count($data)?> livre(s) trouvé(s)-->

<table class='table table-bordered table-responsive-md bg_table'>
	<thead>
		<tr>
			<th>Id</th>
			<th>Titre livre</th>
			<th>Nom fournisseur</th>
			<th>Date achat</th>
			<th>Prix achat</th>
			<th>Nombre exemplaires</th>
		
		</tr>
	</thead>
	<tbody>
		<?php foreach ($commandes as $c):?>
			<tr>
				<td> <?=$c->id_commande?> </td>
				<td> <?=$c->titre_livre?> </td>
				<td> <?=$c->raison_social?> </td>
				<td> <?=$c->date_achat?> </td>
				<td> <?=$c->prix_achat?> </td>
				<td> <?=$c->nb_exemplaires?></td>

			</tr>
		<?php endforeach; ?>
	</tbody>
</table>