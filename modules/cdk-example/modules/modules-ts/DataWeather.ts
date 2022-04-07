
import { Resource, TerraformOutput } from "cdktf";
import { Construct } from "constructs";
import {} from "node-fetch"
//import { DataAzurermClientConfig } from "@cdktf/provider-azurerm";

export interface DataWeatherProps {
    zip_code: string;
}

export class DataWeather extends Resource {
    name: string;
    client_id: string;
    tenant_id: string;
    zip_code: string;

    constructor(scope: Construct, name: string, props: DataWeatherProps) {
        super(scope, name)
        this.name = name;
        this.zip_code = props.zip_code

        //let client_config = new DataAzurermClientConfig(this, "test_config");
        this.client_id = props.zip_code;
        this.tenant_id = props.zip_code;

        this.zip_code = props.zip_code

        new TerraformOutput(this, "test_output", {
            value: this.zip_code + "___from module"
        })

    }
}