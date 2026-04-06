# GCP Infrastructure as Code with Terraform

This project demonstrates atomic and modular Infrastructure as Code (IaC) using Terraform for Google Cloud Platform (GCP). It was created to showcase practical, hands-on experience with modern cloud provisioning, security best practices, and declarative configuration. 

## Architecture Overview

The Terraform configuration automatically provisions the following resources:
1. **Google Cloud Storage Bucket**: A secure, private storage bucket. Includes enforced uniform access control and blocks public internet access at the bucket level.
2. **BigQuery Dataset**: An analytical dataset prepared for data warehousing and transformations.
3. **BigQuery Table**: A tracking table inherently bound to the dataset above, complete with a predefined schema (`id`, `timestamp`, `user_action`). Ready for data ingestion pipelines.

## Technologies
- **Terraform** (>= 1.5.0)
- **Google Cloud Platform (GCP)** (Cloud Storage, BigQuery)
- **HCL** (HashiCorp Configuration Language)

## Best Practices Implemented
- **Variable Injection**: Project ID and regions are dynamic. No hardcoded environment specifics within the core configurations.
- **Strict Access Control**: Cloud Storage provisioned with `public_access_prevention` and `uniform_bucket_level_access` out-of-the-box.
- **State Security**: `.tfstate` and variable files are properly excluded from version control systems.
- **Implicit Dependencies**: Proper referencing between Terraform resources (e.g. bounding table to dataset ID natively rather than using hardcoded strings).

## Usage Instructions

**Prerequisites:** Ensure you have Terraform and Google Cloud CLI (`gcloud`) installed.

1. Authenticate your local shell with GCP:
   ```bash
   gcloud auth application-default login
   ```
2. Initialize Terraform (downloads Google provider):
   ```bash
   terraform init
   ```
3. Preview the infrastructure changes:
   ```bash
   terraform plan
   ```
4. Deploy the infrastructure to GCP:
   ```bash
   terraform apply
   ```
5. **Teardown**: To avoid unnecessary billing, completely remove the provisioned infrastructure when testing is concluded:
   ```bash
   terraform destroy
   ```
