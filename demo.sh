 
 #npm install @cdktf/provider-google

(cd modules/cdk-example && cdktf get && cdktf synth)

cp ./modules/cdk-example/cdktf.out/stacks/cdk-example/cdk.tf.json ./modules/copied-via-instructions-module

#export TF_LOG=DEBUG
terraform get -update

#terraform plan -var zip_code="43201"
terraform apply -auto-approve -var zip_code="432"