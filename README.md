<<<<<<< HEAD
# terraform-s3
Terraform S3 Bucket Provisioning for Event Themes
=======
Terraform S3 Bucket Provisioning for Event Themes
This project automates the provisioning of Amazon S3 buckets for different event themes using Terraform. Each bucket follows a specific naming convention and is set up with private access control in the us-west-2 AWS region.

Project Overview
The company hosts various types of events, such as technology conferences and nature retreats, and each event theme requires a separate S3 bucket for storage. This Terraform configuration automates the creation of these buckets following a predefined naming convention.

Features
S3 Buckets: Creates individual S3 buckets for selected event themes.
Naming Convention: Buckets are named using the format <event_theme>-<your_initials>-bucket (e.g., AdventureTech-JS-bucket).
Private Access: All buckets are configured with private access control.
Region: The S3 buckets are created in the us-west-2 AWS region.
Outputs: The names of the created buckets are displayed at the end of the Terraform run.
Prerequisites
AWS Account: Ensure you have an active AWS account.
AWS CLI: Configure your AWS CLI with valid credentials.
Terraform: Install Terraform (v0.13+ recommended).
VS Code: This project is linked with AWS through Visual Studio Code. Make sure your AWS connection is properly configured.
How to Run
1. Clone the Repository
bash
Copy code
git clone <repository-url>
cd <repository-folder>
2. Initialize Terraform
This command will initialize Terraform and download the required AWS provider:

bash
Copy code
terraform init
3. Review the Configuration
The main.tf file defines the S3 buckets that will be created. It contains:

Provider configuration (aws provider).
S3 bucket resources for the event themes.
Output of bucket names.
4. Apply the Terraform Configuration
To create the S3 buckets, run:

bash
Copy code
terraform apply
You’ll be prompted to confirm the changes. Type yes to proceed.

5. View Output
Once Terraform has finished running, it will display the names of the created S3 buckets as defined in the output block.

6. Destroy Resources
If you want to delete the S3 buckets and clean up resources, run:

bash
Copy code
terraform destroy
Confirm the deletion by typing yes when prompted.

Customization
Adding/Removing Event Themes
To add or remove event themes:

Edit the main.tf file.
Add or remove the corresponding aws_s3_bucket resource blocks.
Re-run terraform apply to apply the changes.
Changing Initials
If you need to use different initials, modify the bucket names in the main.tf file to reflect the correct initials.
>>>>>>> 91d267d (committing to the repo)
