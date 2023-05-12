# GOTO Files:
1. Populate_Custom_Rollup_Summery_Account_Total_Amount
2. AccountTotalAmount
3. AccountTotalAmountHelper
4. Contact.Amount__c
5. Account.Total_Amount__c

# Retrieve Custom Fields: 
sfdx force:source:retrieve -m CustomField:Contact.Amount__c <br/>
sfdx force:source:retrieve -m CustomField:Account.Total_Amount__c 

# Quick Demo link: 
https://drive.google.com/file/d/1DM8L18VkR0yPuvYHW-h_Y4BzecQVQChp/view

# snapshot: 
<img width="1434" alt="Screenshot 2023-05-12 at 1 38 42 AM" src="https://github.com/deepsubha/customRollupSummery/assets/35770307/fc1a2002-ed60-47c9-88fa-3c3f19210320">
-------------------------------------------------------------------------------------------------------------

# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
