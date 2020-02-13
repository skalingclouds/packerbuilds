let randomNum=$RANDOM*$RANDOM
CanaryVMName=c$randomNum
canaryfinal=${CanaryVMName,,}
az vm create \
   --resource-group sc-canarytestvms-01 \
   --name $mytest \
   --image "/subscriptions/d7cc508e-d2cc-46d7-8185-5b4cb24827bb/resourceGroups/sc-rg-infraautomation-01/providers/Microsoft.Compute/galleries/scsig01/images/packerbase/versions/3.0.0" \
   --admin-username skalinator \
   --admin-password SuperSecret007Password! \
   --size Standard_D4s_v3
