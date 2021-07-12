APPNAME=$(az webapp list --query [0].name --output tsv)
echo APPNAME=$APPNAME
APPRG=$(az webapp list --query [0].resourceGroup --output tsv)
echo APPRG=$APPRG
APPPLAN=$(az appservice plan list --query [0].name --output tsv)
echo APPPLAN=$APPPLAN
APPSKU=$(az appservice plan list --query [0].sku.name --output tsv)
echo APPSKU=$APPSKU
APPLOCATION=$(az appservice plan list --query [0].location --output tsv)
echo APPLOCATION=$APPLOCATION

az webapp up --name $APPNAME --resource-group $APPRG --plan $APPPLAN --sku $APPSKU --location "$APPLOCATION"