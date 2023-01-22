Résultat de votre recherche :
<br/>
<!--<?=count($data)?> livre(s) trouvé(s)-->

<table class='table table-bordered table-responsive-md bg_table'>
	<thead>
		<tr>
			<th>Raison social</th>
			<th>Rue fournisseur</th>
			<th>Code postal</th>
			<th>Localité</th>
			<th>Pays</th>
			<th>Tel</th>
			<th>Url</th>
			<th>Email</th>
			<th>Fax</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($fournisseurs as $l):?>
			<tr>
				<td> <?=$l->raison_social?> </td>
				<td> <?=$l->rue_fournisseur?> </td>
				<td> <?=$l->code_postal?> </td>
				<td> <?=$l->localite?> </td>
				<td> <?=$l->pays?> </td>
				<td> <?=$l->tel_fournisseur?> </td>
				<td> <?=$l->url_fournisseur?> </td>
				<td> <?=$l->email_fournisseur?> </td>
				<td> <?=$l->fax_fournisseur?> </td>
			</tr>
		<?php endforeach; ?>
	</tbody>
</table>