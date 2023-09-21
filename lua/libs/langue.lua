Text = {}
--##############################################
--#   US/UK/Default
--##############################################
Text.OK1="Open"
Text.OK2="Save"
Text.NO1="Cancel"
Text.NO2="Return"
Text.OP1="Options"
Text.OP2="New Folder"
Text.OP3="Rename"
Text.OP4="Delete"
Text.OP5="About..."
Text.OP6="Edit"
Text.COM="+ / A / B / X / stylet to navigate"
Text.POPFNE="The folder is not empty!"
Text.POPITD="Can't delete."
Text.POPFAE="The file already exist!"
Text.POPWYR="Would you replace it ?"
Text.POPFE="The folder "
Text.POPAE="...already exist!"
Text.POPWYD="Would you delete it "
Text.POPFIL="file"
Text.POPFOL="folder"
Text.POPFDNE="The file does not exist!"
Text.POPNF="not found."
if(dsUser ~= nil) then
	-- dsUser.language == 1 -> US/UK
	--##############################################
	--#   Francais
	--##############################################
	if(dsUser.language == 2) then
		Text.OK1="Ouvrir"
		Text.OK2="Sauver"
		Text.NO1="Annuler"
		Text.NO2="Retour"
		Text.OP1="Options"
		Text.OP2="Nouveau Dossier"
		Text.OP3="Renommer"
		Text.OP4="Supprimer"
		Text.OP5="A Propos de..."
		Text.OP6="Editer"
		Text.COM="+ / A / B / X / stylet pour naviguer"
		Text.POPFNE="Le dossier n'est pas vide!"
		Text.POPITD="Impossible de le supprimer."
		Text.POPFAE="Le fichier existe déjà!"
		Text.POPWYR="Voulez-vous le remplacer ?"
		Text.POPFE="Le dossier "
		Text.POPAE="...existe déjà!"
		Text.POPWYD="Voulez-vous supprimer le "
		Text.POPFIL="fichier"
		Text.POPFOL="dossier"
		Text.POPFDNE="Le fichier n'existe pas!"
		Text.POPNF="introuvable."
	--##############################################
	--#   german
	--##############################################
	elseif(dsUser.language == 3) then
		Text.OK1="Open"
		Text.OK2="Save"
		Text.NO1="Cancel"
		Text.NO2="Return"
		Text.OP1="Options"
		Text.OP2="New Folder"
		Text.OP3="Rename"
		Text.OP4="Delete"
		Text.OP5="About..."
		Text.OP6="Edit"
		Text.COM="+ / A / B / X / stylet to navigate"
		Text.POPFNE="The folder is not empty!"
		Text.POPITD="Can't delete."
		Text.POPFAE="The file already exist!"
		Text.POPWYR="Would you replace it ?"
		Text.POPFE="The folder "
		Text.POPAE="...already exist!"
		Text.POPWYD="Would you delete it "
		Text.POPFIL="file"
		Text.POPFOL="folder"
		Text.POPFDNE="The file does not exist!"
		Text.POPNF="not found."
	--##############################################
	--#   italian
	--##############################################
	elseif(dsUser.language == 4) then
		Text.OK1="Open"
		Text.OK2="Save"
		Text.NO1="Cancel"
		Text.NO2="Return"
		Text.OP1="Options"
		Text.OP2="New Folder"
		Text.OP3="Rename"
		Text.OP4="Delete"
		Text.OP5="About..."
		Text.OP6="Edit"
		Text.COM="+ / A / B / X / stylet to navigate"
		Text.POPFNE="The folder is not empty!"
		Text.POPITD="Can't delete."
		Text.POPFAE="The file already exist!"
		Text.POPWYR="Would you replace it ?"
		Text.POPFE="The folder "
		Text.POPAE="...already exist!"
		Text.POPWYD="Would you delete it "
		Text.POPFIL="file"
		Text.POPFOL="folder"
		Text.POPFDNE="The file does not exist!"
		Text.POPNF="not found."
	--##############################################
	--#   spanish
	--##############################################
	elseif(dsUser.language == 5) then
		Text.OK1="Open"
		Text.OK2="Save"
		Text.NO1="Cancel"
		Text.NO2="Return"
		Text.OP1="Options"
		Text.OP2="New Folder"
		Text.OP3="Rename"
		Text.OP4="Delete"
		Text.OP5="About..."
		Text.OP6="Edit"
		Text.COM="+ / A / B / X / stylet to navigate"
		Text.POPFNE="The folder is not empty!"
		Text.POPITD="Can't delete."
		Text.POPFAE="The file already exist!"
		Text.POPWYR="Would you replace it ?"
		Text.POPFE="The folder "
		Text.POPAE="...already exist!"
		Text.POPWYD="Would you delete it "
		Text.POPFIL="file"
		Text.POPFOL="folder"
		Text.POPFDNE="The file does not exist!"
		Text.POPNF="not found."
	end	
end