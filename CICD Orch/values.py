import subprocess
import json
 
def call_terraform(request, terraform.tfvars):
    if request == "resource group":
        # tfvars file path
        subprocess.run(["terraform", "apply", f"-var-file={terraform.tfvars}"], cwd="terraform.tfvars")
 
# Json path
with open(".\GLOBAL_IAC\Resource.json", "r") as config_file:
    config_data = json.load(config_file)
 
request_type = config_data.get("request")
terraform.tfvars = config_data.get("pathname")
 
call_terraform(request_type, terraform.tfvars)