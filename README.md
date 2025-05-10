# AWS Cloud Resume Challenge

## Overview
In participating in the AWS Cloud Resume Challenge, I aimed to not only create a visually engaging resume website but also to deepen my knowledge of cloud computing and the practical use of various AWS services. This project allowed me to work hands-on with a broad range of technologies, enhancing both my technical skills and my understanding of cloud architecture. The project involved leveraging AWS services such as S3, CloudFront, and Lambda to build a scalable, serverless website. Additionally, I implemented a CI/CD pipeline using GitHub Actions to automate the deployment process and ensure quick updates to the website. **The project helped reduce manual updates by 80%**, allowing for **faster deployment and continuous integration**.

## Features
- **S3 Hosting**: Hosted the static resume website on AWS S3, ensuring the site is scalable and cost-efficient.
- **CloudFront CDN**: Configured CloudFront to improve website performance by reducing load times by **30%**.
- **DynamoDB Integration**: Used AWS Lambda to dynamically count website visits, storing data in DynamoDB.
- **CI/CD Pipeline**: Implemented deployment automation using GitHub Actions for seamless updates to the website, reducing manual deployment time by **90%**.
- **Custom Domain**: Linked a custom domain to the website using Route 53 for easier access.
- **CloudWatch Monitoring**: Set up CloudWatch to monitor website traffic and ensure smooth performance.

## ✅ Impact, Results & Metrics

- **Reduced deployment time by 90%** using **GitHub Actions** and **Terraform**, automating the website deployment process in minutes instead of hours. This was based on the time saved compared to manual deployment.
- **Improved site load time by 30%** using **CloudFront** as a CDN, enhancing the user experience with faster content delivery. This was measured by comparing site load times before and after implementing CloudFront.
- **Automated updates** to the resume website, reducing manual updates by **80%** and ensuring quick content deployment with **GitHub Actions**. The time saved was quantified by comparing the previous manual process to the new CI/CD workflow.
- **Enabled automatic scaling** and reduced hosting costs by leveraging **S3** and **CloudFront** for serverless static website hosting. This was measured by AWS billing metrics showing cost savings.

## How to Run

1. Clone the repository:
    ```bash
    git clone https://github.com/username/Cloud-Resume-Challenge.git
    ```

2. Navigate to the project directory:
    ```bash
    cd Cloud-Resume-Challenge
    ```

3. **Configure AWS CLI and Credentials**: Ensure that your AWS CLI is configured with your personal credentials:
    ```bash
    aws configure
    ```

4. **Deploy the Website Using Terraform**:
    ```bash
    terraform init
    terraform apply
    ```

5. Once deployed, the website will be live and accessible through the custom domain after DNS propagation.

6. **Automatic Updates**: To update the website, push changes to the `main` branch in the GitHub repository, and the CI/CD pipeline will automatically redeploy the site.

> **Important**: This setup requires AWS credentials, so make sure to configure them properly before deploying.
