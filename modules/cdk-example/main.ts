import { Construct } from "constructs";
import { App, TerraformOutput, TerraformStack, TerraformVariable } from "cdktf";
import { DataWeather } from './modules/modules-ts/DataWeather'


class MyStack extends TerraformStack {
  constructor(scope: Construct, name: string) {
    super(scope, name);


    // // Instantiate Azure Provider
    // new AzurermProvider(this, "AzureRm", {
    //   features: [{}],
    // });

    let weather = new DataWeather(this, "internal_id_weather", {
      zip_code: "43201"
    })


    new TerraformOutput(this, "test_output", {
      value: weather.zip_code
    })

    new TerraformVariable(this, "zip_code_var", {
      description: "this is a test input"
    })
  }

}

const app = new App();
new MyStack(app, "cdk-example");
app.synth();
