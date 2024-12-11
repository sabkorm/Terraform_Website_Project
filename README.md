# Website Project	
## Overview
This project’s goal was creating a static website that is stored on a AWS S3 bucket, which is then distributed through the AWS Cloudfront content delivery network. Both the S3 bucket and the Cloudfront service are created and configured using Terraform. Then, user pushes their website content, including html files, media files, etc, onto a GitHub repository, which is then uploaded to the S3 bucket using GitHub Actions, and distributed through the CDN service.

## Project Component
• GitHub
• Terraform
• AWS S3
• AWS Cloudfront

### GitHub
In this project, a GitHub repository and GitHub Actions are used for easier continuous integration. The user pushes the files for their website into a GitHub repository, and the relevant files are uploaded automatically through GitHub actions into the AWS S3 bucket storage.

### Terraform
In order to create an AWS S3 bucket and an AWS Cloudfront service, Terraform was implemented in this project. The Terraform script uses two modules, one for the creation of the S3 service and one for the Cloudfront service, and their integration with one another.

### AWS S3
The website files that the user pushes into GitHub will be uploaded into the AWS Simple Storage Service (S3). The Terraform module creates an S3 bucket and configures is according to the demands. For example, it’s public access settings.

### AWS Cloudfront
Cloudfront is a web service that speeds up distribution of the web content. In this project, a Terraform module was implemented to configure a Cloudfront Distribution and connect the AWS S3 bucket to it, in order to distribute its contents to a wide network of data centers, which allows the S3 bucket’s contents to be delivered at the lowest latency possible. 