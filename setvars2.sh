APPNAME="hloflaskapp"
echo APPNAME=$APPNAME
APPRG="cloud-demo-151203"
echo APPRG=$APPRG
APPPLAN="ASP-clouddemo151203-a45c"
echo APPPLAN=$APPPLAN
APPSKU="Free"
echo APPSKU=$APPSKU
APPLOCATION="Central US"
echo APPLOCATION=$APPLOCATION

echo az webapp up --name $APPNAME --resource-group $APPRG --plan $APPPLAN --sku $APPSKU --location "$APPLOCATION"

az webapp up --name $APPNAME --resource-group $APPRG --plan $APPPLAN --sku $APPSKU --location "$APPLOCATION"