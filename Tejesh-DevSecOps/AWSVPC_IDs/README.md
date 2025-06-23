### Script Summary

This Bash script retrieves the IDs of Virtual Private Clouds (VPCs) in specified AWS regions. It accepts multiple AWS region names as command-line arguments and uses the AWS CLI to query VPC details for each region. The results are formatted with `jq` for readability.

**Key Features**:
- Checks for missing arguments and prompts the user if no regions are provided.
- Verifies the installation and proper configuration of the AWS CLI.
- Loops through the specified regions to fetch and display VPC IDs, separating results with a delimiter for clarity.

**Usage**:  
Run the script with region names as arguments (e.g., `./script.sh us-east-1 us-west-2`).
