import { Construct } from "constructs";
import { App, TerraformOutput, TerraformStack, TerraformVariable } from "cdktf";
import { DataWeather } from './modules/modules-ts/DataWeather'


class MyStack extends TerraformStack {
  constructor(scope: Construct, name: string) {
    super(scope, name);

    let zipCodeVar = new TerraformVariable(this, "zip_code", {
      description: "this is a test input"
    })

    let weather = new DataWeather(this, "internal_id_weather", {
      zip_code: zipCodeVar.value
    })


    new TerraformOutput(this, "test_output", {
      value: weather.zip_code
    })


  }

}

const app = new App();
new MyStack(app, "cdk-example");
app.synth();
