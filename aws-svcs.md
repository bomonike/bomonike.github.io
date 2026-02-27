---
layout: post
date: "2026-02-26"
lastchange: "26-02-26 v007 AI items sorted :aws-svcs.md"
url: https://bomonike.github.io/aws-svcs
file: "aws-svcs"
title: "AWS Services"
excerpt: "URLs and codes associated with each AWS service, grouped by AWS's product categories."
tags: [AWS, cloud, on-boarding]
image:
# feature: pic data center slice 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14622043/8b1f9cce-0584-11e6-8b9f-4b6db5bb6e37.jpg
  credit:
  creditlink:
comments: true
created: "2026-02-18"
---
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

Service names begin with either "Amazon" or "AWS". Which one used by a particular service is inconsistent because a naming convention has never been published.

* "Amazon" prefix (e.g., Amazon S3, Amazon EC2, Amazon RDS) tends to be used for <strong>core</strong> building blocks of cloud computing - foundational infrastructure services that have been around since the early days of AWS. Such services are typically a discrete, <strong>provisionable</strong> service/resource (a bucket, an instance, a database, etc.).

* "AWS" prefix (e.g., AWS Lambda, AWS IAM, AWS CloudFormation) tends to be used for higher-level, platform-wide, or management/orchestration services that operate <strong>across the infrastructure</strong> rather than being a discrete resource that is individually provisioned. Such services are typically a tool, framework, or platform capability (identity management, deployment, governance, etc.).

Notable inconsistencies:

   * Amazon CloudWatch is a monitoring/management tool that spans the infrastructure.

   * AWS Glue is a data service that is provisioned

   * "SageMaker AI" and "Kiro" are being marketed without the Amazon/AWS prefix.


## Categories alphabetically

   * <a target="_blank" href="https://aws.amazon.com/big-data/datalakes-and-analytics/">Analytics</a> (datalakes): Streaming, Data lakehouse, Data warehouse, Data lake, Data processing, Business intelligence, Search analytics, Data and AI governance
   * <a target="_blank" href="https://aws.amazon.com/products/application-integration/">Application Integration</a>
   * <a target="_blank" href="https://aws.amazon.com/ai/">Artificial intelligence</a>
   * <a target="_blank" href="https://aws.amazon.com/business-applications/">Business applications</a>
   * <a target="_blank" href="https://aws.amazon.com/products/compute/">Compute</a>
   * <a target="_blank" href="https://aws.amazon.com/connect/">Custome Experience (Contact Center)</a> (Amazon Connect)
   * <a target="_blank" href="https://aws.amazon.com/products/databases/">Databases</a>
   * <a target="_blank" href="https://aws.amazon.com/products/developer-tools/">Developer Tools</a>
   * <a target="_blank" href="https://aws.amazon.com/products/end-user-computing/">End User Computing</a>
   * <a target="_blank" href="https://aws.amazon.com/gamelift/">Game Tech</a>
   * <a target="_blank" href="https://aws.amazon.com/products/management-and-governance/">Management Tools</a> (and Governance)
   * <a target="_blank" href="https://aws.amazon.com/media-services/">Media Services</a>
   * <a target="_blank" href="https://aws.amazon.com/products/migration-and-modernization/">Migration & Modernization</a>
   * <a target="_blank" href="https://aws.amazon.com/products/multicloud-hybrid/">Multicloud & Hybrid</a>
   * <a target="_blank" href="https://aws.amazon.com/products/networking/">Networking & Content Delivery</a>
   * <a target="_blank" href="https://aws.amazon.com/cloudops/">Operations</a>
   * <a target="_blank" href="https://aws.amazon.com/products/security/">Security & Identity</a>
   * <a target="_blank" href="https://aws.amazon.com/products/storage/">Storage</a>
   * <a target="_blank" href="https://aws.amazon.com/aws-supply-chain/">(AWS) Supply Chain</a>


## <a target="_blank" href="https://aws.amazon.com/products/analytics/">Analytics</a>

Optimize performance and scale for analytics and AI workloads

- <a target="_blank" href="https://aws.amazon.com/athena/">Amazon Athena</a> Query S3 data using SQL
- <a target="_blank" href="https://aws.amazon.com/emr/">Amazon EMR</a> Big data processing with Hadoop/Spark
- <a target="_blank" href="https://aws.amazon.com/cloudsearch/">Amazon CloudSearch</a> Managed search service
- <a target="_blank" href="https://aws.amazon.com/opensearch-service/">Amazon OpenSearch Service</a> Search, analyze, and visualize data
- <a target="_blank" href="https://aws.amazon.com/kinesis/">Amazon Kinesis</a> Real-time data streaming
- <a target="_blank" href="https://aws.amazon.com/quicksight/">Amazon QuickSight</a> Business intelligence and dashboards
- <a target="_blank" href="https://aws.amazon.com/datapipeline/">AWS Data Pipeline</a> Orchestrate data workflows
- <a target="_blank" href="https://aws.amazon.com/glue/">AWS Glue</a> Serverless data integration (ETL)
- <a target="_blank" href="https://aws.amazon.com/lake-formation/">AWS Lake Formation</a> Build and manage data lakes
- <a target="_blank" href="https://aws.amazon.com/msk/">Amazon MSK</a> Managed Apache Kafka service
- <a target="_blank" href="https://aws.amazon.com/datazone/">Amazon DataZone</a> Data catalog and governance
- <a target="_blank" href="https://aws.amazon.com/redshift/spectrum/">Amazon Redshift Spectrum</a> Query S3 data from Redshift


## <a target="_blank" href="https://aws.amazon.com/products/application-integration/">Application Integration</a>

Integrate distributed systems and serverless applications with less code

- <a target="_blank" href="https://aws.amazon.com/sns/">Amazon SNS</a> Pub/sub messaging and mobile push notifications
- <a target="_blank" href="https://aws.amazon.com/sqs/">Amazon SQS</a> Message queuing service
- <a target="_blank" href="https://aws.amazon.com/step-functions/">AWS Step Functions</a> Orchestrate distributed applications
- <a target="_blank" href="https://aws.amazon.com/eventbridge/">Amazon EventBridge</a> Serverless event bus
- <a target="_blank" href="https://aws.amazon.com/amazon-mq/">Amazon MQ</a> Managed message broker (ActiveMQ, RabbitMQ)
- <a target="_blank" href="https://aws.amazon.com/appsync/">AWS AppSync</a> Managed GraphQL API service
- <a target="_blank" href="https://aws.amazon.com/appflow/">Amazon AppFlow</a> Integrate SaaS apps with AWS services

## <a target="_blank" href="https://aws.amazon.com/ai/">Artificial intelligence</a>

Build and scale the next wave of AI innovation on AWS

- <a target="_blank" href="https://aws.amazon.com/bedrock/">Amazon Bedrock</a> Foundation models for generative AI
- <a target="_blank" href="https://aws.amazon.com/comprehend/">Amazon Comprehend</a> Natural language processing (NLP)
- <a target="_blank" href="https://aws.amazon.com/kendra/">Amazon Kendra</a> Intelligent enterprise search
- <a target="_blank" href="https://bomonike.github.io/aws-kiro/">AWS Kiro.dev</a> AI Agent development IDE & CLI (incorporates Amazon Q)

- <a target="_blank" href="https://aws.amazon.com/lex/">Amazon Lex</a> Build conversational chatbots
- <a target="_blank" href="https://aws.amazon.com/personalize/">Amazon Personalize</a> Real-time personalization and recommendations
- <a target="_blank" href="https://aws.amazon.com/polly/">Amazon Polly</a> Text-to-speech service
- <a target="_blank" href="https://aws.amazon.com/q/">Amazon Q</a> AI-powered assistant for developers and businesses
- <a target="_blank" href="https://aws.amazon.com/rekognition/">Amazon Rekognition</a> Image and video analysis
- <a target="_blank" href="https://aws.amazon.com/sagemaker/">Amazon SageMaker AI</a> Build, train, and deploy ML models

- <a target="_blank" href="https://aws.amazon.com/textract/">Amazon Textract</a> Extract text and data from documents
- <a target="_blank" href="https://aws.amazon.com/transcribe/">Amazon Transcribe</a> Speech-to-text service
- <a target="_blank" href="https://aws.amazon.com/translate/">Amazon Translate</a> Language translation service
- <a target="_blank" href="https://aws.amazon.com/forecast/">Amazon Forecast</a> Time-series forecasting

- <a target="_blank" href="https://aws.amazon.com/appstudio/">AWS App Studio</a> The fastest and easiest way to build enterprise-grade applications, using natural language. [<a target="_blank" href="https://docs.aws.amazon.com/appstudio/latest/userguide/welcome.htmlZ">UG</a>]
- <a target="_blank" href="https://aws.amazon.com/deeplens/">AWS DeepLens</a> Deep learning enabled video camera [discontinued]
- <a target="_blank" href="https://aws.amazon.com/deepracer/">AWS DeepRacer</a> Autonomous racing car for ML learning


## <a target="_blank" href="https://aws.amazon.com/blockchain/">Blockchain (Web3)</a>

- <a target="_blank" href="https://aws.amazon.com/managed-blockchain/">Amazon Managed Blockchain</a> Create and manage blockchain networks
- <a target="_blank" href="https://aws.amazon.com/qldb/">Amazon QLDB</a> Immutable, cryptographically verifiable ledger database


## <a target="_blank" href="https://aws.amazon.com/business-applications/">Business applications</a>

Cloud and native applications built on and by AWS

- <a target="_blank" href="https://aws.amazon.com/connect/">Amazon Connect</a> Cloud contact center
- <a target="_blank" href="https://aws.amazon.com/ses/">Amazon SES</a> Email sending and receiving
- <a target="_blank" href="https://aws.amazon.com/pinpoint/">Amazon Pinpoint</a> Multi-channel marketing communications
- <a target="_blank" href="https://aws.amazon.com/chime/">Amazon Chime</a> Communications service
- <a target="_blank" href="https://aws.amazon.com/workmail/">Amazon WorkMail</a> Secure email and calendaring


## <a target="_blank" href="https://aws.amazon.com/aws-cost-management/">Cloud Financial Management</a>

Transform your business with cost transparency, control, forecasting, and optimization

- <a target="_blank" href="https://aws.amazon.com/aws-cost-management/aws-billing-conductor/">Billing and Cost Management - View and pay bills, analyze and govern your spending, and optimize your costs
- <a target="_blank" href="https://aws.amazon.com/aws-cost-management/aws-billing-conductor/">AWS Billing Conductor</a> - Simplifying your billing practice
- <a target="_blank" href="https://aws.amazon.com/partners/marketplace/buy-with-aws/">AWS Marketplace</a> - Digital catalog where you can find, buy, and deploy software

<a name="Compute/"></a>

## <a target="_blank" href="https://aws.amazon.com/products/compute/">Compute</a>

Run instances, containers, and serverless computing

- <a target="_blank" href="https://aws.amazon.com/ec2/">Amazon EC2</a> Virtual servers in the cloud
- <a target="_blank" href="https://aws.amazon.com/lambda/">AWS Lambda</a> Run code without managing servers (serverless)
- <a target="_blank" href="https://aws.amazon.com/fargate/">AWS Fargate</a> Serverless compute capacity provider for containers obtained from ECR
- <a target="_blank" href="https://aws.amazon.com/batch/">AWS Batch</a> Batch computing at any scale
- <a target="_blank" href="https://aws.amazon.com/elasticbeanstalk/">Elastic Beanstalk</a> Deploy and scale web applications
- <a target="_blank" href="https://aws.amazon.com/apprunner/">AWS App Runner</a> Deploy containerized web apps easily
- <a target="_blank" href="https://aws.amazon.com/lightsail/">AWS Lightsail</a> Simple virtual private servers
- ASG (Auto Scaling Group) is not a separate product but a feature of EC2.

<a name="Containers"></a>

## <a target="_blank" href="https://aws.amazon.com/containers/">Containers</a>

- ECR (Elastic Container Registry) - Fully-managed Docker container registry : Share and deploy container software, publicly or privately. Competes with Artifactory.
- <a target="_blank" href="https://aws.amazon.com/ecs/">Amazon ECS</a> Elastic Container Service for orchestration
- <a target="_blank" href="https://aws.amazon.com/eks/">Amazon EKS</a> Managed Elastic Kubernetes service
- Red Hat OpenShift Service on AWS - Fully managed Red Hat OpenShift service on AWS


## <a target="_blank" href="https://aws.amazon.com/connect/">Custome Experience (Contact Center)</a> Enablement

- <a target="_blank" href="https://aws.amazon.com/connect/">Amazon Connect</a> Personalized customer experiences at scale


## <a target="_blank" href="https://aws.amazon.com/products/databases/">Databases</a>

Power AI and data-driven applications at any scale

- <a target="_blank" href="https://aws.amazon.com/rds/">Amazon RDS</a> Managed relational databases (MySQL, PostgreSQL, SQL Server, etc.)
- <a target="_blank" href="https://aws.amazon.com/dynamodb/">Amazon DynamoDB</a> Fast, flexible NoSQL database
- <a target="_blank" href="https://aws.amazon.com/rds/aurora/">Amazon Aurora</a> High-performance MySQL and PostgreSQL compatible database
- <a target="_blank" href="https://aws.amazon.com/redshift/">Amazon Redshift</a> Fast, scalable data warehouse
- <a target="_blank" href="https://aws.amazon.com/elasticache/">Amazon ElastiCache</a> In-memory caching (Redis, Memcached)
- <a target="_blank" href="https://aws.amazon.com/documentdb/">Amazon DocumentDB</a> MongoDB-compatible document database
- <a target="_blank" href="https://aws.amazon.com/neptune/">Amazon Neptune</a> Graph database service
- <a target="_blank" href="https://aws.amazon.com/timestream/">Amazon Timestream</a> Time series database
- <a target="_blank" href="https://aws.amazon.com/keyspaces/">Amazon Keyspaces</a> Managed Cassandra-compatible database
- <a target="_blank" href="https://aws.amazon.com/memorydb/">Amazon MemoryDB for Redis</a> Redis-compatible, durable in-memory database


## <a target="_blank" href="https://aws.amazon.com/products/developer-tools/">Developer Tools</a>

Develop applications on AWS faster and easier

- <a target="_blank" href="https://aws.amazon.com/codecommit/">AWS CodeCommit</a> Git repository hosting
- <a target="_blank" href="https://aws.amazon.com/codebuild/">AWS CodeBuild</a> Build and test code
- <a target="_blank" href="https://aws.amazon.com/codedeploy/">AWS CodeDeploy</a> Automate code deployments
- <a target="_blank" href="https://aws.amazon.com/codepipeline/">AWS CodePipeline</a> Continuous integration and delivery
- <a target="_blank" href="https://aws.amazon.com/cloud9/">AWS Cloud9</a> Cloud-based IDE
- <a target="_blank" href="https://aws.amazon.com/cloudshell/">AWS CloudShell</a> Browser-based shell
- <a target="_blank" href="https://aws.amazon.com/xray/">AWS X-Ray</a> Trace and analyze distributed applications
- <a target="_blank" href="https://aws.amazon.com/codeartifact/">AWS CodeArtifact</a> Managed artifact repository
- <a target="_blank" href="https://aws.amazon.com/codeguru/">AWS CodeGuru</a> AI-powered code reviews and performance recommendations


## <a target="_blank" href="https://aws.amazon.com/products/end-user-computing/">End User Computing</a>

Run cloud-native virtual desktops, secure web browsers, and streaming apps

- <a target="_blank" href="https://aws.amazon.com/workspaces/">Amazon WorkSpaces</a> Virtual desktops in the cloud


## Front-end Web & Mobile

- Secrets Manager - Easily rotate, manage, and retrieve secrets throughout their lifecycle
- IAM - Manage access to AWS resources
- Support - Contact AWS for technical and account support.
- Amazon Bedrock AgentCore - Deploy and operate highly effective agents securely, at scale using any framework and model.


## <a target="_blank" href="https://aws.amazon.com/gamelift/">Game Tech</a>

Build breakthrough gaming experiences

* Amazon GameLift Servers - Game server hosting purpose-built to power the world's most demanding games
* Amazon GameLift Streams - Managed service for low-latency, high frame rate game streaming at global scale


## **IoT (Internet of Things)**

- <a target="_blank" href="https://aws.amazon.com/iot-core/">AWS IoT Core</a> Connect devices to the cloud
- <a target="_blank" href="https://aws.amazon.com/greengrass/">AWS IoT Greengrass</a> Local compute, messaging, and sync for devices
- <a target="_blank" href="https://aws.amazon.com/iot-device-management/">AWS IoT Device Management</a> Register, organize, and manage IoT devices
- <a target="_blank" href="https://aws.amazon.com/iot-analytics/">AWS IoT Analytics</a> Analytics for IoT devices
- <a target="_blank" href="https://aws.amazon.com/iot-events/">AWS IoT Events</a> Detect and respond to IoT events
- <a target="_blank" href="https://aws.amazon.com/iot-sitewise/">AWS IoT SiteWise</a> Collect and organize industrial equipment data


## <a target="_blank" href="https://aws.amazon.com/products/management-and-governance/">Management Tools</a> 

Organize, track, and optimize how you use AWS

- <a target="_blank" href="https://aws.amazon.com/cloudformation/">AWS CloudFormation</a> Infrastructure as code
- <a target="_blank" href="https://aws.amazon.com/cloudtrail/">AWS CloudTrail</a> Track user activity and API usage
- <a target="_blank" href="https://aws.amazon.com/cloudwatch/">Amazon CloudWatch</a> Monitoring and observability
- <a target="_blank" href="https://aws.amazon.com/config/">AWS Config</a> Resource inventory and configuration history
- <a target="_blank" href="https://aws.amazon.com/systems-manager/">AWS Systems Manager</a> Operational insights and automation
- <a target="_blank" href="https://aws.amazon.com/organizations/">AWS Organizations</a> Manage multiple AWS accounts
- <a target="_blank" href="https://aws.amazon.com/controltower/">AWS Control Tower</a> Set up and govern multi-account environments
- <a target="_blank" href="https://aws.amazon.com/servicecatalog/">AWS Service Catalog</a> Create and manage approved service catalogs
- <a target="_blank" href="https://aws.amazon.com/premiumsupport/technology/trusted-advisor/">AWS Trusted Advisor</a> Optimize costs, performance, and security
- <a target="_blank" href="https://aws.amazon.com/aws-cost-management/aws-cost-explorer/">AWS Cost Explorer</a> Visualize and manage AWS costs
- <a target="_blank" href="https://aws.amazon.com/aws-cost-management/aws-budgets/">AWS Budgets</a> Set custom cost and usage budgets
- <a target="_blank" href="https://aws.amazon.com/license-manager/">AWS License Manager</a> Manage software licenses


## <a target="_blank" href="https://aws.amazon.com/media-services/">Media Services</a>

Create digital content, and build live and on-demand video workflows

- <a target="_blank" href="https://aws.amazon.com/elastictranscoder/">Amazon Elastic Transcoder</a> Media transcoding in the cloud
- <a target="_blank" href="https://aws.amazon.com/mediaconvert/">AWS Elemental MediaConvert</a> File-based video transcoding
- <a target="_blank" href="https://aws.amazon.com/medialive/">AWS Elemental MediaLive</a> Live video processing
- <a target="_blank" href="https://aws.amazon.com/mediapackage/">AWS Elemental MediaPackage</a> Video origination and packaging
- <a target="_blank" href="https://aws.amazon.com/mediastore/">AWS Elemental MediaStore</a> Media storage optimized for video
- <a target="_blank" href="https://aws.amazon.com/kinesis/video-streams/">Amazon Kinesis Video Streams</a> Process and analyze video streams

## <a target="_blank" href="https://aws.amazon.com/products/migration-and-modernization/">Migration & Modernization</a>

Migrate faster and modernize with confidence (Transfer)

- <a target="_blank" href="https://aws.amazon.com/migration-hub/">AWS Migration</a> Track migrations from a central location
- <a target="_blank" href="https://aws.amazon.com/dms/">AWS Database Migration Service</a> Migrate databases to AWS
- <a target="_blank" href="https://aws.amazon.com/server-migration-service/">AWS Server Migration Service</a> Migrate on-premises servers to AWS
- <a target="_blank" href="https://aws.amazon.com/datasync/">AWS DataSync</a> Fast data transfer to/from AWS
- <a target="_blank" href="https://aws.amazon.com/aws-transfer-family/">AWS Transfer Family</a> Managed file transfers (SFTP, FTPS, FTP)
- <a target="_blank" href="https://aws.amazon.com/snow/">AWS Snow Family</a> Physical devices for data migration
- <a target="_blank" href="https://aws.amazon.com/application-migration-service/">AWS Application Migration Service</a> Lift-and-shift migration

## <a target="_blank" href="https://aws.amazon.com/products/multicloud-hybrid/">Multicloud & Hybrid</a>

Support operations across AWS, other clouds, and on-premises environments

- <a target="_blank" href="https://aws.amazon.com/athena/">Amazon Athena</a> Query S3 data using SQL


## <a target="_blank" href="https://aws.amazon.com/products/networking/">Networking & Content Delivery</a>

Run every workload on a secure and reliable global network

- <a target="_blank" href="https://aws.amazon.com/vpc/">Amazon VPC</a> Isolated cloud networks
- <a target="_blank" href="https://aws.amazon.com/cloudfront/">Amazon CloudFront</a> Global content delivery network (CDN)
- <a target="_blank" href="https://aws.amazon.com/route53/">Amazon Route 53</a> Scalable DNS and domain registration
- <a target="_blank" href="https://aws.amazon.com/directconnect/">AWS Direct Connect</a> Dedicated network connection to AWS
- <a target="_blank" href="https://aws.amazon.com/elasticloadbalancing/">Elastic Load Balancing</a> Distribute incoming traffic across targets
- <a target="_blank" href="https://aws.amazon.com/global-accelerator/">AWS Global Accelerator</a> Improve global application availability and performance
- <a target="_blank" href="https://aws.amazon.com/transit-gateway/">AWS Transit Gateway</a> Connect VPCs and on-premises networks
- <a target="_blank" href="https://aws.amazon.com/privatelink/">AWS PrivateLink</a> Private connectivity between VPCs and services
- <a target="_blank" href="https://aws.amazon.com/vpn/">AWS VPN</a> Secure connections to AWS
- <a target="_blank" href="https://aws.amazon.com/app-mesh/">AWS App Mesh</a> Application-level networking for microservices


##  <a target="_blank" href="https://aws.amazon.com/cloudops/">Operations</a>

Gain visibility, control, and governance at scale

- <a target="_blank" href="https://aws.amazon.com/systems-manager/">AWS Systems Manager</a> Operational insights and automation
- etc. ???

<a target="_blank" href="https://www.youtube.com/playlist?list=PLehXSATXjcQHj8bPSf0uZuQBoxJ7a7ag7/">Cloud Operations Show on YouTube</a>

## **Quantum Computing**
- <a target="_blank" href="https://aws.amazon.com/braket/">Amazon Braket</a> Explore and experiment with quantum computing
- <a target="_blank" href="https://aws.amazon.com/braket/">Amazon Quantum Ledger Database (QLDB)</a> Fully managed ledger database


## **Satellite**
- <a target="_blank" href="https://aws.amazon.com/ground-station/">AWS Ground Station</a> Communicate with satellites


## <a target="_blank" href="https://aws.amazon.com/products/security/">Security & Identity</a> (& Compliance)

+ Compliance

- <a target="_blank" href="https://aws.amazon.com/iam/">AWS IAM</a> Identity and access management
- <a target="_blank" href="https://aws.amazon.com/cognito/">Amazon Cognito</a> User authentication and authorization
- <a target="_blank" href="https://aws.amazon.com/secrets-manager/">AWS Secrets Manager</a> Securely store and rotate secrets
- <a target="_blank" href="https://aws.amazon.com/kms/">AWS KMS</a> Managed encryption key service
- <a target="_blank" href="https://aws.amazon.com/waf/">AWS WAF</a> Web application firewall
- <a target="_blank" href="https://aws.amazon.com/shield/">AWS Shield</a> DDoS protection
- <a target="_blank" href="https://aws.amazon.com/guardduty/">Amazon GuardDuty</a> Threat detection service
- <a target="_blank" href="https://aws.amazon.com/inspector/">Amazon Inspector</a> Automated security assessment
- <a target="_blank" href="https://aws.amazon.com/macie/">Amazon Macie</a> Discover and protect sensitive data
- <a target="_blank" href="https://aws.amazon.com/security-hub/">AWS Security</a> Centralized security and compliance
- <a target="_blank" href="https://aws.amazon.com/certificate-manager/">AWS Certificate Manager</a> Provision and manage SSL/TLS certificates
- <a target="_blank" href="https://aws.amazon.com/directoryservice/">AWS Directory Service</a> Managed Active Directory
- <a target="_blank" href="https://aws.amazon.com/cloudhsm/">AWS CloudHSM</a> Hardware security module
- <a target="_blank" href="https://aws.amazon.com/firewall-manager/">AWS Firewall Manager</a> Central firewall management


## <a target="_blank" href="https://aws.amazon.com/products/storage/">Storage</a>

Store and manage data for every workload at scale

- <a target="_blank" href="https://aws.amazon.com/s3/">Amazon S3</a> Scalable object storage
- <a target="_blank" href="https://aws.amazon.com/ebs/">Amazon EBS</a> Block storage for EC2 instances
- <a target="_blank" href="https://aws.amazon.com/efs/">Amazon EFS</a> Managed file storage for EC2
- <a target="_blank" href="https://aws.amazon.com/fsx/">Amazon FSx</a> Managed file systems (Windows, Lustre, NetApp, OpenZFS)
- <a target="_blank" href="https://aws.amazon.com/glacier/">Amazon S3 Glacier</a> Low-cost archive storage
- <a target="_blank" href="https://aws.amazon.com/storagegateway/">AWS Storage Gateway</a> Hybrid cloud storage integration
- <a target="_blank" href="https://aws.amazon.com/backup/">AWS Backup</a> Centralized backup across AWS services


## **Robotics**
- <a target="_blank" href="https://aws.amazon.com/robomaker/">AWS RoboMaker</a> Develop, test, and deploy robotics applications


NOTE: Amazon Web Service (AWS) offer several types of services:
   * "SaaS" (System as a Service) which works completely from the browser like Microsoft 365, Google Drive, or Salesforce.
   * "PaaS" (Platform as a Service)
   <br /><br />

## Services by AWS Region

- <a target="_blank" href="https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/">AWS Regional Services List</a> Services available by region



- <a target="_blank" href="https://aws.amazon.com/appstream2/">Amazon AppStream 2.0</a> Stream desktop applications
- <a target="_blank" href="https://aws.amazon.com/workdocs/">Amazon WorkDocs</a> Secure document collaboration
- <a target="_blank" href="https://aws.amazon.com/worklink/">Amazon WorkLink</a> Secure mobile access to internal websites

