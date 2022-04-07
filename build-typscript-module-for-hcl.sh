
(cd modules/cdk-example && cdktf get && cdktf synth)

cp ./modules/cdk-example/cdktf.out/stacks/cdk-example/cdk.tf.json ./modules/copied-via-instructions-module
