# AWS Cloud Resume Challenge

## Overview
In participating in the AWS Cloud Resume Challenge, I aimed to not only create a visually engaging resume website but also to deepen my knowledge of cloud computing and the practical use of various AWS services. This project allowed me to work hands-on with a broad range of technologies, enhancing both my technical skills and my understanding of cloud architecture. The project involved leveraging AWS services such as S3, CloudFront, and Lambda to build a scalable, serverless website. Additionally, I implemented a CI/CD pipeline using GitHub Actions to automate the deployment process and ensure quick updates to the website.

## Features
- **S3 Hosting**: Hosted the static resume website on AWS S3, ensuring the site is scalable and cost-efficient.
- **CloudFront CDN**: Configured CloudFront to improve website performance by reducing load times.
- **DynamoDB Integration**: Used AWS Lambda to dynamically count website visits, storing data in DynamoDB.
- **CI/CD Pipeline**: Implemented deployment automation using GitHub Actions for seamless updates to the website.
- **Custom Domain**: Linked a custom domain to the website using Route 53 for easier access.
- **CloudWatch Monitoring**: Set up CloudWatch to monitor website traffic and ensure smooth performance.

## Step-by-Step Process

### Planning and Design
I began designing the layout and structure of the website, focusing on sections such as education, skills, projects, and contact information. The objective was to create a clean, professional look that is easy to navigate.

### Frontend Development
I developed the static website using **HTML**, **CSS**, and **JavaScript** to provide a responsive and visually appealing user experience.

### Setting Up AWS Services

- **S3 Bucket Creation**: I set up an Amazon S3 bucket to host the static website, ensuring the bucket name was unique and followed AWS conventions. Static website hosting was enabled, and I defined the index document.
  
- **Bucket Policy**: I configured a bucket policy to allow public access to the website files, following AWS security best practices to protect sensitive resources.

### Setting Up CloudFront
To improve website performance, I configured Amazon CloudFront as a Content Delivery Network (CDN), linking it to the S3 bucket and optimizing caching to reduce load times.

### Domain Configuration with Route 53
I registered a custom domain using Amazon Route 53 and configured DNS settings to point to the CloudFront distribution. This ensured users could access the site via a custom URL.

### Backend Integration with AWS Lambda
I configured AWS Lambda to implement a dynamic visitor counter that tracks how many times the website has been viewed. The Lambda function processed the data and stored it in an Amazon DynamoDB table for future review.

### Deployment Automation with GitHub Actions
To simplify and automate updates to the website, I implemented a CI/CD pipeline using GitHub Actions. This ensured that any changes made in the repository’s main branch would trigger an automatic deployment to the S3 bucket and refresh the CloudFront cache.

### Monitoring and Optimization
Post-deployment, I monitored the website’s performance using AWS CloudWatch and reviewed traffic data via CloudFront logs. Based on these insights, I fine-tuned the website to ensure fast load times and a smooth user experience.

## Learning Outcomes
This challenge was instrumental in enhancing my understanding of cloud architecture, serverless computing, and web application deployment. I developed proficiency in key AWS services and gained valuable experience in automating workflows for efficient updates. This project not only improved my technical skills but also serves as a tangible portfolio piece demonstrating my ability to effectively leverage cloud technologies.

## Tech Stack
- **AWS S3**: Used to host the static website.
- **AWS CloudFront**: Content Delivery Network (CDN) to optimize website performance.
- **AWS Lambda**: Used for serverless backend functions, such as tracking website visitors.
- **AWS Route 53**: Domain management and DNS configuration.
- **GitHub Actions**: Continuous integration and deployment (CI/CD) for automatic updates.
- **DynamoDB**: NoSQL database to store visitor count data.
- **HTML/CSS/JS**: Frontend technologies for the resume website.

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
