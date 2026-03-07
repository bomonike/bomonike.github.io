---
layout: post
date: "2026-03-06"
lastchange: "26-03-06 v016 actions urls :aws-svcs.md"
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

This reference was prepared because Amazon does not provide major links together to the service prefix and action for each service.

Service names begin with either "Amazon" or "AWS". Which one used by a particular service is inconsistent because a naming convention has never been published.

* "Amazon" prefix (e.g., Amazon S3, Amazon EC2, Amazon RDS) tends to be used for <strong>core</strong> building blocks of cloud computing - foundational infrastructure services that have been around since the early days of AWS. Such services are typically a discrete, <strong>provisionable</strong> service/resource (a bucket, an instance, a database, etc.).

* "AWS" prefix (e.g., AWS Lambda, AWS IAM, AWS CloudFormation) tends to be used for higher-level, platform-wide, or management/orchestration services that operate <strong>across the infrastructure</strong> rather than being a discrete resource that is individually provisioned. Such services are typically a tool, framework, or platform capability (identity management, deployment, governance, etc.).

Notable inconsistencies:

   * Amazon CloudWatch is a monitoring/management tool that spans the infrastructure.

   * AWS Glue is a data service that is provisioned

   * "SageMaker AI" and "Kiro" are being marketed without the Amazon/AWS prefix.



## Category Websites, alphabetically

   * <a target="_blank" href="https://aws.amazon.com/big-data/datalakes-and-analytics/">Analytics</a> 
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


AWS IAM action service prefixes from <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys documentation</a>


## <a target="_blank" href="https://aws.amazon.com/products/analytics/">Analytics</a>

"Optimize performance and scale for analytics and AI workloads"

(datalakes): Streaming, Data lakehouse, Data warehouse, Data lake, Data processing, Business intelligence, Search analytics, Data and AI governance

- athena</a>:: <a target="_blank" href="https://aws.amazon.com/athena/">Amazon Athena</a> Query S3 data using SQL  [<a target="_blank" href="https://docs.aws.amazon.com/athena/">UG</a>]
- cleanrooms</a>:: <a target="_blank" href="https://aws.amazon.com/clean-rooms/">AWS Clean Rooms</a> analyze and collaborate on your collective datasets to gain new insights without revealing underlying data to one another. [<a target="_blank" href="https://docs.aws.amazon.com/clean-rooms/">UG</a>]
- datapipeline</a>:: <a target="_blank" href="https://aws.amazon.com/glue/">AWS Data Pipeline</a> = Glue 
- datazone</a>:: <a target="_blank" href="https://aws.amazon.com/datazone/">Amazon DataZone</a> Data catalog and governance
- emr</a>:: <a target="_blank" href="https://aws.amazon.com/emr/">Amazon EMR</a> Big data processing with Hadoop/Spark

- es</a>:: Elasticsearch Service (legacy)
- cloudsearch</a>:: <a target="_blank" href="https://aws.amazon.com/cloudsearch/">Amazon CloudSearch</a> Managed search service.  [<a target="_blank" href="https://docs.aws.amazon.com/cloudsearch/">UG</a>]

- glue</a>: <a target="_blank" href="https://aws.amazon.com/glue/">AWS Glue</a> Serverless data integration (ETL) [<a target="_blank" href="https://docs.aws.amazon.com/glue/">UG</a>]
- lakeformation</a>: <a target="_blank" href="https://aws.amazon.com/lake-formation/">AWS Lake Formation</a> Build and manage data lakes. [<a target="_blank" href="https://docs.aws.amazon.com/lake-formation/">UG</a>]
- msk</a>: <a target="_blank" href="https://aws.amazon.com/msk/">Amazon MSK</a> Managed Apache Kafka service.  [<a target="_blank" href="https://docs.aws.amazon.com/msk/">UG</a>]
- opensearch</a>: <a target="_blank" href="https://aws.amazon.com/opensearch-service/">Amazon OpenSearch Service</a> Search, analyze, and visualize data.  [<a target="_blank" href="https://docs.aws.amazon.com/opensearch-service/">UG</a>]
- quicksight</a>: <a target="_blank" href="https://aws.amazon.com/quicksight/">Amazon QuickSight</a> Business intelligence and dashboards.  [<a target="_blank" href="https://docs.aws.amazon.com/quicksight/">UG</a>]
- redshift</a>: <a target="_blank" href="https://aws.amazon.com/redshift/spectrum/">Amazon Redshift Spectrum</a> Query S3 data from Redshift.  [<a target="_blank" href="https://docs.aws.amazon.com/redshift/">UG</a>]


## <a target="_blank" href="https://aws.amazon.com/products/application-integration/">Application Integration</a> (Messaging)

"Integrate distributed systems and serverless applications with less code"

- events</a>: <a target="_blank" href="https://aws.amazon.com/eventbridge/">Amazon EventBridge</a> Serverless event bus.  [<a target="_blank" href="https://docs.aws.amazon.com/eventbridge/">UG</a>]
- firehose</a>: <a target="_blank" href="https://aws.amazon.com/firehose/">Amazon (Kinesis) Firehose</a> Collect, process, and analyze real-time, streaming data so you can get timely insights and react quickly to new information. [<a target="_blank" href="https://docs.aws.amazon.com/firehose/">UG</a>]
- kinesis</a>: <a target="_blank" href="https://aws.amazon.com/kinesis/">Amazon Kinesis</a> Real-time data video streaming.  [<a target="_blank" href="https://docs.aws.amazon.com/kinesis/">UG</a>]
- mq</a>: <a target="_blank" href="https://aws.amazon.com/amazon-mq/">Amazon MQ</a> Managed message broker (ActiveMQ, RabbitMQ).  [<a target="_blank" href="https://docs.aws.amazon.com/amazon-mq/">UG</a>]

- pipes</a>: ??? Amazon EventBridge Pipes
- scheduler</a>: ??? Amazon EventBridge Scheduler

- ses</a>: <a target="_blank" href="https://aws.amazon.com/ses/">Amazon SES</a> Email sending and receiving.  [<a target="_blank" href="https://docs.aws.amazon.com/ses/">UG</a>]
- sns</a>: <a target="_blank" href="https://aws.amazon.com/sns/">Amazon SNS</a> Pub/sub messaging and mobile push notifications.  [<a target="_blank" href="https://docs.aws.amazon.com/sns/">UG</a>]
- sqs</a>: <a target="_blank" href="https://aws.amazon.com/sqs/">Amazon SQS</a> Message queuing service.  [<a target="_blank" href="https://docs.aws.amazon.com/sqs/">UG</a>]
- states</a>: <a target="_blank" href="https://aws.amazon.com/step-functions/">AWS Step Functions</a> Orchestrate distributed applications. coordinate the components of distributed applications as a series of steps in a visual workflow. You can quickly build and run state machines to execute the steps of your application in a reliable and scalable fashion. [<a target="_blank" href="https://docs.aws.amazon.com/step-functions/">UG</a>]
- swf</a>:  <a target="_blank" href="https://aws.amazon.com/swf/">Simple Workflow Service.  build applications that coordinate work across distributed components. In Amazon SWF, a task represents a logical unit of work that is performed by a component of your application. Coordinating tasks across the application involves managing intertask dependencies, scheduling, and concurrency in accordance with the logical flow of the application. Amazon SWF gives you full control over implementing tasks and coordinating them without worrying about underlying complexities such as tracking their progress and maintaining their state. [<a target="_blank" href="https://docs.aws.amazon.com/swf/">UG</a>]

- appsync</a>: <a target="_blank" href="https://aws.amazon.com/appsync/">AWS AppSync</a> Managed GraphQL API service.  [<a target="_blank" href="https://docs.aws.amazon.com/appsync/">UG</a>]
- appflow</a>: <a target="_blank" href="https://aws.amazon.com/appflow/">Amazon AppFlow</a> API to integrate SaaS apps with AWS services to securely transfer data. No-code. [<a target="_blank" href="https://docs.aws.amazon.com/appflow/">UG</a>]


## <a target="_blank" href="https://aws.amazon.com/ai/">Artificial intelligence</a> (AI)

"Build and scale the next wave of AI innovation on AWS"

- augmentedai: sagemaker-a2i-runtime: <a target="_blank" href="https://aws.amazon.com/augmented-ai/">Amazon Augmented AI (A2I)</a> API a2i-runtime.sagemaker to integrate human reviews with Amazon Textract to verify or override ML predictions.  [<a target="_blank" href="https://docs.aws.amazon.com/augmented-ai/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonbedrock.html">bedrock</a>: <a target="_blank" href="https://aws.amazon.com/bedrock/">Amazon Bedrock</a> Foundation models for generative AI.  [<a target="_blank" href="https://docs.aws.amazon.com/bedrock/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonbedrockagentcore.html">bedrock-agentcore</a>: ??? Amazon Bedrock AgentCore - Deploy and operate highly effective agents securely, at scale using any framework and model.

- comprehend</a>: <a target="_blank" href="https://aws.amazon.com/comprehend/">Amazon Comprehend</a> Natural language processing (NLP). [<a target="_blank" href="https://docs.aws.amazon.com/comprehend/">UG</a>]
- forecast</a>: <a target="_blank" href="https://aws.amazon.com/forecast/">Amazon Forecast</a> Time-series forecasting.  [<a target="_blank" href="https://docs.aws.amazon.com/forecast/">UG</a>]
- frauddetector</a>: <a target="_blank" href="https://aws.amazon.com/frauddetector/">Fraud Detector</a>.  [<a target="_blank" href="https://docs.aws.amazon.com/frauddetector/">UG</a>]
- kendra</a>: <a target="_blank" href="https://aws.amazon.com/kendra/">Amazon Kendra</a> Intelligent enterprise search.  [<a target="_blank" href="https://docs.aws.amazon.com/kendra/">UG</a>]

- ???</a>: <a target="_blank" href="https://bomonike.github.io/aws-kiro/">AWS Kiro.dev</a> AI Agent development IDE & CLI (incorporates Amazon Q).  [<a target="_blank" href="https://bomonike.github.io/aws-kiro/">UG</a>]

- lex</a>: <a target="_blank" href="https://aws.amazon.com/lex/">Amazon Lex</a> Build conversational chatbots.  [<a target="_blank" href="https://docs.aws.amazon.com/lex/">UG</a>]
- ???</a>: <a target="_blank" href="https://aws.amazon.com/nova/act/">Amazon Nova Act</a> SaaS to use a custom Nova 2 Lite model to build fleets of reliable agents to automate production UI workflows at scale (navigating & filling forms, extracting info).
- ???</a>: <a target="_blank" href="https://aws.amazon.com/nova/forge/">Amazon Nova Forge</a> use HyperPod CLI to build custom frontier models. Reinforment Learning in customer environment with proprietary data. [<a target="_blank" href="https://docs.aws.amazon.com/sagemaker/latest/dg/nova-forge.html">UG</a>]

- ???</a>: <a target="_blank" href="https://partyrock.aws">PartyRock.aws</a> Website to create reusable,
useful and delightful apps with generative AI prompts.  [<a target="_blank" href="https://docs.aws.amazon.com/appflow/">UG</a>] <a target="_blank" href="https://www.youtube.com/watch?v=96SiaQnKfJY">VIDEO</a>
- personalize</a>: <a target="_blank" href="https://aws.amazon.com/personalize/">Amazon Personalize</a> Real-time personalization and recommendations.  [<a target="_blank" href="https://docs.aws.amazon.com/personalize/">UG</a>]
- polly</a>: <a target="_blank" href="https://aws.amazon.com/polly/">Amazon Polly</a> Text-to-speech service.  [<a target="_blank" href="https://docs.aws.amazon.com/polly/">UG</a>]
- rekognition</a>: <a target="_blank" href="https://aws.amazon.com/rekognition/">Amazon Rekognition</a> Image and video analysis.  [<a target="_blank" href="https://docs.aws.amazon.com/rekognition/">UG</a>]
- ???</a>: <a target="_blank" href="https://aws.amazon.com/q/">Amazon Q</a> AI-powered assistant for developers and businesses.  [<a target="_blank" href="https://docs.aws.amazon.com/q/">UG</a>]

- sagemaker</a>: <a target="_blank" href="https://aws.amazon.com/sagemaker/">Amazon SageMaker AI</a> Build, train, and deploy ML models. [<a target="_blank" href="https://docs.aws.amazon.com/sagemaker/">UG</a>]
- ???</a>: SageMaker Clarify > detect and mitigate bias (data skew) in ML models before and after deployment.
- ???</a>: SageMaker Model Miner > Monitor models in production to detect quality issues or performance degradation, such as model & data drift and feature distribution. Notify users of deviations found.
- ???</a>: SageMaker Model Cards > Document (version controlled) critical details of ML models for governance. Features include model overview, intended uses, risk ratings, evalution metrics, definitions, training details.

- textract</a>: <a target="_blank" href="https://aws.amazon.com/textract/">Amazon Textract</a> Extract text and data from documents.  [<a target="_blank" href="https://docs.aws.amazon.com/textract/">UG</a>]
- transcribe</a>: <a target="_blank" href="https://aws.amazon.com/transcribe/">Amazon Transcribe</a> Speech-to-text service.  [<a target="_blank" href="https://docs.aws.amazon.com/transcribe/">UG</a>]
- translate</a>: <a target="_blank" href="https://aws.amazon.com/translate/">Amazon Translate</a> Language translation service.  [<a target="_blank" href="https://docs.aws.amazon.com/translate/">UG</a>]

- ???</a>: <a target="_blank" href="https://aws.amazon.com/appstudio/">AWS App Studio</a> Build enterprise-grade applications, using natural language. [<a target="_blank" href="https://docs.aws.amazon.com/appstudio/latest/userguide/welcome.htmlZ">UG</a>]
- ???</a>: <a target="_blank" href="https://aws.amazon.com/transform/">AWS Transform</a> Modernize .NET applications to Linux-ready cross-platform .NET. Migrate IBM z/OS and VMware to AWS EC2. Modernize [<a target="_blank" href="https://docs.aws.amazon.com/transform/">UG</a>]

- ???</a>: <a target="_blank" href="https://aws.amazon.com/deeplens/">AWS DeepLens</a> Deep learning enabled video camera [discontinued]
- ???</a>: <a target="_blank" href="https://aws.amazon.com/deepracer/">AWS DeepRacer</a> Autonomous racing car for ML learning


## <a target="_blank" href="https://aws.amazon.com/blockchain/">Blockchain (Web3)</a>

- <a target="_blank" href="https://aws.amazon.com/managed-blockchain/">Amazon Managed Blockchain</a> Create and manage blockchain networks
- <a target="_blank" href="https://aws.amazon.com/qldb/">Amazon QLDB</a> Immutable, cryptographically verifiable ledger database


## Messaging <a target="_blank" href="https://aws.amazon.com/business-applications/">Business applications</a>

"Cloud and native applications built on and by AWS"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonconnect.html">connect</a>: <a target="_blank" href="https://aws.amazon.com/connect/">Amazon Connect</a> a cloud contact center as a service (CCaaS) solution that offers easy, self-service configuration and enables dynamic, personal, and natural customer engagement at any scale.  [<a target="_blank" href="https://docs.aws.amazon.com/connect/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonpinpoint.html">mobiletargeting</a>: <a target="_blank" href="https://aws.amazon.com/pinpoint/">Amazon Pinpoint</a> Multi-channel marketing communications.  service-specific resources, actions, and condition context keys for use in IAM permission policies. [<a target="_blank" href="https://docs.aws.amazon.com/pinpoint/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonchime.html">chime</a>: <a target="_blank" href="https://aws.amazon.com/chime/">Amazon Chime</a> Communications service. [<a target="_blank" href="https://docs.aws.amazon.com/chime/">UG</a>]


## <a target="_blank" href="https://aws.amazon.com/aws-cost-management/">Cloud Financial Management</a>

"Transform your business with cost transparency, control, forecasting, and optimization"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsaccountmanagement.html">account</a>: ??? AWS Account Management

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsbilling.html">billing</a>: <a target="_blank" href="https://aws.amazon.com/aws-cost-management/aws-billing/">Billing and Cost Management - View and pay bills, analyze and govern your spending, and optimize your costs.
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsbillingconductor.html">billingconductor</a>: <a target="_blank" href="https://aws.amazon.com/aws-cost-management/aws-billing-conductor/">AWS Billing Conductor</a>  Simplifying your billing practice.

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsbudgetservice.html">budgets</a>: <a target="_blank" href="https://aws.amazon.com/aws-cost-management/aws-budgets/">AWS Budgets</a> Set custom cost and usage budgets. <a target="_blank" href="https://docs.aws.amazon.com/account-billing/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscostexplorerservice.html">ce</a>: <a target="_blank" href="https://aws.amazon.com/aws-cost-management/aws-cost-explorer/">AWS Cost Explorer</a> Visualize and manage AWS costs.  <a target="_blank" href="https://docs.aws.amazon.com/account-billing/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsmarketplace.html">aws-marketplace</a>: <a target="_blank" href="https://aws.amazon.com/partners/marketplace/buy-with-aws/">AWS Marketplace</a> - Digital catalog where you can find, buy, and deploy software.


<a name="Compute/"></a>

## <a target="_blank" href="https://aws.amazon.com/products/compute/">Compute</a>

"Run instances, containers, and serverless computing"

- <a target="_blank" href="">app-runner: <a target="_blank" href="https://aws.amazon.com/apprunner/">AWS App Runner</a> Deploy containerized web apps easily. [<a target="_blank" href="https://docs.aws.amazon.com/apprunner/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsbatch.html">batch</a>: <a target="_blank" href="https://aws.amazon.com/batch/">AWS Batch</a> Batch computing at any scale. [<a target="_blank" href="https://docs.aws.amazon.com/batch/">UG</a>]
- <a target="_blank" href="">ec2: <a target="_blank" href="https://aws.amazon.com/ec2/">Amazon EC2</a> Virtual servers in the cloud.  [<a target="_blank" href="https://docs.aws.amazon.com/ec2/">UG</a>]
- <a target="_blank" href="">lambda: <a target="_blank" href="https://aws.amazon.com/lambda/">AWS Lambda</a> Run code without managing servers (serverless). [<a target="_blank" href="https://docs.aws.amazon.com/lambda/">UG</a>]
- <a target="_blank" href="">lightsail: <a target="_blank" href="https://aws.amazon.com/lightsail/">AWS Lightsail</a> Simple virtual private servers. [<a target="_blank" href="https://docs.aws.amazon.com/lightsail/">UG</a>]

- <a target="_blank" href="">??? <a target="_blank" href="https://aws.amazon.com/elasticbeanstalk/">Elastic Beanstalk</a> Deploy and scale web applications. 

* robomaker: AWS RoboMaker</a> Develop, test, and deploy robotics applications. Shut down September 10, 2025.

   The service failed to gain enough traction in the market. It was essentially built for iRobot (maker of the Roomba), and there wasn't sufficient due diligence to determine if it was useful for anyone else.
   
   On December 14, 2025, iRobot filed for Chapter 11 bankruptcy protection. After 35 years, the company is` acquired by China's Shenzhen Picea Robotics — the manufacturer contracted to build Roombas.

   AWS Batch is the primary recommended replacement. Migrating means containerizing your ROS/Gazebo simulation apps into Docker images, pushing them to ECR, then creating Batch compute environments and job queues to run those containers.
   The tradeoff is that you lose integrated RoboMaker features like the WorldForge GUI and on-demand development IDE, but gain more control over instance types, unlimited scaling, and better cost optimization through Spot instances — with no Batch service fee. NBC Sports Sonnet 4.6

* ASG (Auto Scaling Group) is not a separate product but a feature of EC2.


<a name="Containers"></a>

## <a target="_blank" href="https://aws.amazon.com/containers/">Containers</a> (Compute)

- <a target="_blank" href="">ecr: (Elastic Container Registry) - Fully-managed Docker container registry : Share and deploy container software, publicly or privately. Competes with Artifactory. [<a target="_blank" href="https://docs.aws.amazon.com/ecr/">UG</a>]
- <a target="_blank" href="">ecs: <a target="_blank" href="https://aws.amazon.com/ecs/">Amazon ECS</a> Elastic Container Service for orchestration. [<a target="_blank" href="https://docs.aws.amazon.com/ecs/">UG</a>]
- <a target="_blank" href="">eks: <a target="_blank" href="https://aws.amazon.com/eks/">Amazon EKS</a> Managed Elastic Kubernetes service.  [<a target="_blank" href="https://docs.aws.amazon.com/eks/">UG</a>]
- <a target="_blank" href="">???</a>: Red Hat OpenShift Service on AWS - Fully managed Red Hat OpenShift service on AWS

* fargate is a part of AmazonECS: Serverless compute capacity provider for containers obtained from ECR. [<a target="_blank" href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS_Fargate.html">UG</a>]



## <a target="_blank" href="https://aws.amazon.com/products/databases/">Database</a>

"Power AI and data-driven applications at any scale"

- <a target="_blank" href="">cassandra</a>: <a target="_blank" href="https://aws.amazon.com/keyspaces/">Amazon Keyspaces</a> Managed Apache Cassandra-compatible database. [<a target="_blank" href="https://docs.aws.amazon.com/keyspaces/">UG</a>]
- <a target="_blank" href="">dax</a>: ???
- <a target="_blank" href="">docdb</a>: <a target="_blank" href="https://aws.amazon.com/documentdb/">Amazon DocumentDB</a> MongoDB-compatible document database. [<a target="_blank" href="https://docs.aws.amazon.com/documentdb/">UG</a>]
- <a target="_blank" href="">dynamodb</a>: <a target="_blank" href="https://aws.amazon.com/dynamodb/">Amazon DynamoDB</a> Fast, flexible NoSQL database. [<a target="_blank" href="https://docs.aws.amazon.com/dynamodb/">UG</a>]
- <a target="_blank" href="">elasticache</a>: <a target="_blank" href="https://aws.amazon.com/elasticache/">Amazon ElastiCache</a> In-memory caching (Redis, Memcached). [<a target="_blank" href="https://docs.aws.amazon.com/elasticache/">UG</a>]
- <a target="_blank" href="">neptune</a>: <a target="_blank" href="https://aws.amazon.com/neptune/">Amazon Neptune</a> Graph database service. [<a target="_blank" href="https://docs.aws.amazon.com/neptune/">UG</a>]

* qldb</a>: <a target="_blank" href="https://aws.amazon.com/blogs/aws/now-available-amazon-quantum-ledger-database-qldb/">Amazon Quantum Ledger Database (QLDB)</a> Fully managed ledger database. Available Sep. 10, 2019. Ended July 31, 2025.

- <a target="_blank" href="">rds</a>: <a target="_blank" href="https://aws.amazon.com/rds/">Amazon RDS</a> Managed relational databases (MySQL, PostgreSQL, SQL Server, etc.). [<a target="_blank" href="https://docs.aws.amazon.com/qldb/">UG</a>]
- (rds) <a target="_blank" href="">aurora</a>? <a target="_blank" href="https://aws.amazon.com/rds/aurora/">Amazon Aurora</a> High-performance MySQL and PostgreSQL compatible database. [<a target="_blank" href="https://docs.aws.amazon.com/rds/">UG</a>]

- <a target="_blank" href="">redshift</a>: <a target="_blank" href="https://aws.amazon.com/redshift/">Amazon Redshift</a> Fast, scalable data warehouse. [<a target="_blank" href="https://docs.aws.amazon.com/qldb/">UG</a>]
- <a target="_blank" href="">timestream</a>: <a target="_blank" href="https://aws.amazon.com/timestream/">Amazon Timestream</a> Time series database. [<a target="_blank" href="https://docs.aws.amazon.com/qldb/">UG</a>]

- <a target="_blank" href="">redis</a>:? <a target="_blank" href="https://aws.amazon.com/memorydb/">Amazon MemoryDB for Redis</a> Redis-compatible, durable in-memory database. [<a target="_blank" href="https://docs.aws.amazon.com/memorydb/">UG</a>]


## <a target="_blank" href="https://aws.amazon.com/products/developer-tools/">Developer Tools</a>

"Develop applications on AWS faster and easier"

- <a target="_blank" href="">braket</a>: <a target="_blank" href="https://aws.amazon.com/braket/">Amazon Braket</a> Explore and experiment with quantum computing. [<a target="_blank" href="https://docs.aws.amazon.com/braket/">UG</a>]
- <a target="_blank" href="">cloud9</a>: <a target="_blank" href="https://aws.amazon.com/cloud9/">AWS Cloud9</a> Cloud-based IDE. [<a target="_blank" href="https://docs.aws.amazon.com/cloud9/">UG</a>]
- <a target="_blank" href="">cloudshell</a>: <a target="_blank" href="https://aws.amazon.com/cloudshell/">AWS CloudShell</a> Browser-based shell. [<a target="_blank" href="https://docs.aws.amazon.com/cloudshell/">UG</a>]
- <a target="_blank" href="">codeartifact</a>: <a target="_blank" href="https://aws.amazon.com/codeartifact/">AWS CodeArtifact</a> Managed artifact repository. [<a target="_blank" href="https://docs.aws.amazon.com/codeartifact/">UG</a>]
- <a target="_blank" href="">codebuild</a>: <a target="_blank" href="https://aws.amazon.com/codebuild/">AWS CodeBuild</a> Build and test code. [<a target="_blank" href="https://docs.aws.amazon.com/codebuild/">UG</a>]
- <a target="_blank" href="">codecommit</a>: <a target="_blank" href="https://aws.amazon.com/codecommit/">AWS CodeCommit</a> Git repository hosting. [<a target="_blank" href="https://docs.aws.amazon.com/codecommit/">UG</a>]
- <a target="_blank" href="">codedeploy</a>: <a target="_blank" href="https://aws.amazon.com/codedeploy/">AWS CodeDeploy</a> Automate code deployments. [<a target="_blank" href="https://docs.aws.amazon.com/codedeploy/">UG</a>]
- <a target="_blank" href="">codeguru</a>: <a target="_blank" href="https://aws.amazon.com/codeguru/">AWS CodeGuru</a> AI-powered code reviews and performance recommendations. [<a target="_blank" href="https://docs.aws.amazon.com/codeguru/">UG</a>]
- <a target="_blank" href="">codepipeline</a>: <a target="_blank" href="https://aws.amazon.com/codepipeline/">AWS CodePipeline</a> Continuous integration and delivery. [<a target="_blank" href="https://docs.aws.amazon.com/codepipeline/">UG</a>]
- <a target="_blank" href="">codestar</a>: ???
- <a target="_blank" href="">xray</a>: <a target="_blank" href="https://aws.amazon.com/xray/">AWS X-Ray</a> Trace and analyze distributed applications. [<a target="_blank" href="https://docs.aws.amazon.com/xray/">UG</a>]



## <a target="_blank" href="https://aws.amazon.com/products/end-user-computing/">End User Computing</a>

"Run cloud-native virtual desktops, secure web browsers, and streaming apps"

- <a target="_blank" href="">appstream</a>: <a target="_blank" href="https://aws.amazon.com/appstream2/">Amazon AppStream 2.0</a> Stream desktop applications. [<a target="_blank" href="https://docs.aws.amazon.com/appstream2/">UG</a>]
- <a target="_blank" href="">workdocs</a>: <a target="_blank" href="https://aws.amazon.com/workdocs/">Amazon WorkDocs</a> Secure document collaboration. [<a target="_blank" href="https://docs.aws.amazon.com/workdocs/">No UG</a>]
- <a target="_blank" href="">workmail</a>: <a target="_blank" href="https://aws.amazon.com/workmail/">Amazon WorkMail</a> Secure email and calendaring.  [<a target="_blank" href="https://docs.aws.amazon.com/workmail/">UG</a>]
- <a target="_blank" href="">workspaces</a>: <a target="_blank" href="https://aws.amazon.com/workspaces/">Amazon WorkSpaces</a> Virtual desktops in the cloud. [<a target="_blank" href="https://docs.aws.amazon.com/workspaces/">UG</a>]

* <a target="_blank" href="">worklink</a>: ??? Amazon WorkLink</a> Secure mobile access to internal websites.


## <a target="_blank" href="https://aws.amazon.com/gamelift/">Game Tech</a>

Build breakthrough gaming experiences

* <a target="_blank" href="">gamelift</a>: <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazongameliftservers.html#amazongameliftservers-actions-as-permissions">Amazon GameLift Servers</a> Game server hosting purpose-built to power the world's most demanding games. No UG.

* <a target="_blank" href="">gameliftstreams</a>: ??? <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazongameliftstreams.html">Amazon GameLift Streams</a> - Managed service for low-latency, high frame rate game streaming at global scale. No UG.


## <a target="_blank" href="https://aws.amazon.com/iot/">IoT (Internet of Things)</a>

- <a target="_blank" href="">greengrass</a>: <a target="_blank" href="https://aws.amazon.com/greengrass/">AWS IoT Greengrass</a> Local compute, messaging, and sync for devices. Version 2 [<a target="_blank" href="https://docs.aws.amazon.com/greengrass/">UG</a>]

- <a target="_blank" href="">iot</a>: <a target="_blank" href="https://aws.amazon.com/iot-core/">AWS IoT Core</a> Connect devices to the cloud. [<a target="_blank" href="https://docs.aws.amazon.com/iot/">UG</a>]
- <a target="_blank" href="">???</a>: <a target="_blank" href="https://aws.amazon.com/iot-device-management/">AWS IoT Device Management</a> Register, organize, and manage IoT devices. [<a target="_blank" href="https://docs.aws.amazon.com/iot-device-management/">UG</a>]
- <a target="_blank" href="">???</a>: <a target="_blank" href="https://aws.amazon.com/iot-analytics/">AWS IoT Analytics</a> Analytics for IoT devices.
- <a target="_blank" href="">iotevents</a>: <a target="_blank" href="https://aws.amazon.com/iot-events/">AWS IoT Events</a> Detect and respond to IoT events.
- <a target="_blank" href="">???</a>: <a target="_blank" href="https://aws.amazon.com/iot-sitewise/">AWS IoT SiteWise</a> Collect and organize industrial equipment data. [<a target="_blank" href="https://docs.aws.amazon.com/iot-sitewise/">UG</a>]


## <a target="_blank" href="https://aws.amazon.com/products/management-and-governance/">Management Tools</a> (& Monitoring)

"Organize, track, and optimize how you use AWS"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsactionrecommendations.html">action-recommendations</a>: Action Recommendations</a> actions in the AWS Management Console.
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscloudformation.html">cloudformation</a>: <a target="_blank" href="https://aws.amazon.com/cloudformation/">AWS CloudFormation</a> Infrastructure as code. [<a target="_blank" href="https://docs.aws.amazon.com/cloudformation/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscloudtrail.html">cloudtrail</a>: <a target="_blank" href="https://aws.amazon.com/cloudtrail/">AWS CloudTrail</a> Track user activity and API usage. [<a target="_blank" href="https://docs.aws.amazon.com/cloudcloudtrailformation/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatch.html">cloudwatch</a>: <a target="_blank" href="https://aws.amazon.com/cloudwatch/">Amazon CloudWatch</a> Monitoring and observability.  [<a target="_blank" href="https://docs.aws.amazon.com/cloudwatch/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscomputeoptimizer.html">compute-optimizer</a>: ??? Compute Optimizer Automation
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsconfig.html">config</a>: <a target="_blank" href="https://aws.amazon.com/config/">AWS Config</a> Resource inventory and configuration history. [<a target="_blank" href="https://docs.aws.amazon.com/config/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awshealthapisandnotifications.html">health</a>: ??? AWS Health APIs and Notifications</a>, HealthImaging, HealthLake, HealthOmics
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudwatchlogs.html">logs</a>: ??? CloudWatch Logs
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html">organizations</a>: <a target="_blank" href="https://aws.amazon.com/organizations/">AWS Organizations</a> Manage multiple AWS accounts. [<a target="_blank" href="https://docs.aws.amazon.com/organizations/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsservicecatalog.html">servicecatalog</a>: <a target="_blank" href="https://aws.amazon.com/servicecatalog/">AWS Service Catalog</a> Create and manage approved service catalogs. [<a target="_blank" href="https://docs.aws.amazon.com/servicecatalog/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssystemsmanager.html">ssm</a>: <a target="_blank" href="https://aws.amazon.com/systems-manager/">AWS Systems Manager</a> Operational insights and automation. [<a target="_blank" href="https://docs.aws.amazon.com/systems-manager/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awstrustedadvisor.html">trustedadvisor</a>: <a target="_blank" href="https://aws.amazon.com/premiumsupport/technology/trusted-advisor/">AWS Trusted Advisor</a> Optimize costs, performance, and security. 

- <a target="_blank" href="">???</a>: <a target="_blank" href="https://aws.amazon.com/controltower/">AWS Control Tower</a> Set up and govern multi-account environments
- <a target="_blank" href="">???</a>: <a target="_blank" href="https://aws.amazon.com/license-manager/">AWS License Manager</a> Manage software licenses

<a target="_blank" href="https://www.youtube.com/playlist?list=PLehXSATXjcQHj8bPSf0uZuQBoxJ7a7ag7/">Cloud Operations Show on YouTube</a>


## <a target="_blank" href="https://aws.amazon.com/media-services/">Media Services</a>

"Create digital content, and build live and on-demand video workflows"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonelastictranscoder.html">elastictranscoder</a>: <a target="_blank" href="https://aws.amazon.com/elastictranscoder/">Amazon Elastic Transcoder</a> Media transcoding in the cloud. [<a target="_blank" href="https://docs.aws.amazon.com/elastictranscoder/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awselementalmediaconvert.html">mediaconvert</a>: <a target="_blank" href="https://aws.amazon.com/mediaconvert/">AWS Elemental MediaConvert</a> File-based video transcoding. [<a target="_blank" href="https://docs.aws.amazon.com/mediaconvert/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awselementalmedialive.html">medialive</a>: <a target="_blank" href="https://aws.amazon.com/medialive/">AWS Elemental MediaLive</a> Live video processing. [<a target="_blank" href="https://docs.aws.amazon.com/medialive/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awselementalmediapackage.html">mediapackage</a>: <a target="_blank" href="https://aws.amazon.com/mediapackage/">AWS Elemental MediaPackage</a> Video origination and packaging. [<a target="_blank" href="https://docs.aws.amazon.com/mediapackage/">UG</a>]
- mediapackage-vod: ??? MediaPackage VOD
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awselementalmediastore.html">mediastore</a>: <a target="_blank" href="https://aws.amazon.com/mediastore/">AWS Elemental MediaStore</a> Media storage optimized for video. [<a target="_blank" href="https://docs.aws.amazon.com/mediastore/">UG</a>]
- MediaTailor


## <a target="_blank" href="https://aws.amazon.com/products/migration-and-modernization/">Migration & Modernization</a>

"Migrate faster and modernize with confidence (Transfer)"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsmigrationhub.html">mgh</a>: <a target="_blank" href="https://aws.amazon.com/migration-hub/">AWS Migration Hub</a> Track migrations from a central location. [<a target="_blank" href="https://docs.aws.amazon.com/migration-hub/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsapplicationmigrationservice.html">mgn</a>: <a target="_blank" href="https://aws.amazon.com/application-migration-service/">AWS Application Migration Service</a> Lift-and-shift migration.
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsdatabasemigrationservice.html">dms</a>: <a target="_blank" href="https://aws.amazon.com/dms/">AWS Database Migration Service</a> Migrate databases to AWS. [<a target="_blank" href="https://docs.aws.amazon.com/dms/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsservermigrationservice.html">sms</a>: <a target="_blank" href="https://aws.amazon.com/server-migration-service/">AWS Server Migration Service</a> Migrate on-premises servers to AWS.

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsdatasync.html">datasync</a>: <a target="_blank" href="https://aws.amazon.com/datasync/">AWS DataSync</a> Fast data transfer to/from AWS. [<a target="_blank" href="https://docs.aws.amazon.com/datasync/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awstransferfamily.html">?transfer</a>: <a target="_blank" href="https://aws.amazon.com/aws-transfer-family/">AWS Transfer Family</a> Managed file transfers (SFTP, FTPS, FTP).
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssnowball.html">snowball</a>: <a target="_blank" href="https://aws.amazon.com/snow/">AWS Snowball</a> Physical devices for data migration.



## <a target="_blank" href="https://aws.amazon.com/products/networking/">Networking & Content Delivery</a>

"Run every workload on a secure and reliable global network"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonapigateway.html">apigateway</a>: <a target="_blank" href="https://aws.amazon.com/api-gateway/">AWS API Gateway Management V2</a> Connect VPCs and on-premises networks [<a target="_blank" href="https://docs.aws.amazon.com/apigateway/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsappmesh.html">appmesh</a>: <a target="_blank" href="https://aws.amazon.com/app-mesh/">AWS App Mesh</a> Application-level networking for microservices. [<a target="_blank" href="https://docs.aws.amazon.com/app-mesh/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudfront.html">cloudfront</a>: <a target="_blank" href="https://aws.amazon.com/cloudfront/">Amazon CloudFront</a> Global content delivery network (CDN). [<a target="_blank" href="https://docs.aws.amazon.com/cloudfront/">UG</a>]
- <a target="_blank" href="">directconnect</a>: <a target="_blank" href="https://aws.amazon.com/directconnect/">AWS Direct Connect</a> Dedicated network connection to AWS. [<a target="_blank" href="https://docs.aws.amazon.com/directconnect/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awselasticloadbalancingv2.html">elasticloadbalancing</a>: <a target="_blank" href="https://aws.amazon.com/elasticloadbalancing/">Elastic Load Balancing V2</a> Distribute incoming traffic across targets. [<a target="_blank" href="https://docs.aws.amazon.com/elasticloadbalancing/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsglobalaccelerator.html">globalaccelerator</a>: <a target="_blank" href="https://aws.amazon.com/global-accelerator/">AWS Global Accelerator</a> "Improve global application availability and performance" using AWS-assigned 2 local AnyCast IP addresses on AWS Edge locations (Points of Presence) routed through AWS' optimized private backbone CDN. AWS auto-switches among listening Enpoint Groups in a Region ALB, NLB, Elastic IP, EC2 instance.  [<a target="_blank" href="https://docs.aws.amazon.com/global-accelerator/">UG</a>] <a target="_blank" href="https://www.youtube.com/watch?v=9LPKDeRlobg">VIDEO</a>
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsroute53globalresolver.html">route53globalresolver</a>: <a target="_blank" href="https://aws.amazon.com/route53/">Amazon Route 53 Global Resolver</a> Scalable DNS and domain registration. [<a target="_blank" href="https://docs.aws.amazon.com/route53/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonroute53resolver.html">route53resolver</a>: Route53 Resolver [<a target="_blank" href="https://docs.aws.amazon.com/cli/latest/reference/route53resolver/index.html">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonvpclattice.html">vpc-lattice</a>: <a target="_blank" href="https://aws.amazon.com/vpc/">Amazon VPC Lattice</a> Isolated cloud networks. [<a target="_blank" href="https://docs.aws.amazon.com/vpc/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsprivatelink.html">vpce</a>: <a target="_blank" href="https://docs.aws.amazon.com/vpc/latest/privatelink/what-is-privatelink.html">AWS PrivateLink</a> between VPC (Virtual Private Connectivity) and service resources.

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsgroundstation.html">groundstation</a>: <a target="_blank" href="https://aws.amazon.com/ground-station/">AWS Ground Station</a> Communicate with satellites. [<a target="_blank" href="https://docs.aws.amazon.com/ground-station/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsverifiedaccess.html">verified-access</a>: <a target="_blank" href="https://aws.amazon.com/vpn/">AWS Verified Access</a> (VPN) Secure connections to AWS ???. [<a target="_blank" href="https://docs.aws.amazon.com/vpn/">UG</a>]


## <a target="_blank" href="https://aws.amazon.com/products/security/">Security & Identity</a> (& Compliance)

+ Compliance

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiamaccessanalyzer.html">access-analyzer</a>: ??? AWS IAM Access Analyzer.
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscertificatemanager.html">acm</a>: <a target="_blank" href="https://aws.amazon.com/certificate-manager/">AWS Certificate Manager</a> Provision and manage SSL/TLS certificates. [<a target="_blank" href="https://docs.aws.amazon.com/acm/">UG</a>]

- <a target="_blank" href="">cognito-identity</a>: <a target="_blank" href="https://aws.amazon.com/cognito/">Amazon Cognito Identity</a> Federated User authentication and authorization. [<a target="_blank" href="https://docs.aws.amazon.com/cognito/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncognitosync.html">cognito-sync</a>: Amazon Cognito Sync
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncognitouserpools.html">cognito-idp</a>: Amazon Cognito User Pools

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazondetective.html">detective</a>: <a target="_blank" href="https://aws.amazon.com/detective/">Amazon detective</a> analyze, investigate, and quickly identify the root cause of security findings or suspicious activities. [<a target="_blank" href="https://docs.aws.amazon.com/detective/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonguardduty.html">guardduty</a>: <a target="_blank" href="https://aws.amazon.com/guardduty/">Amazon GuardDuty</a> Threat detection service. [<a target="_blank" href="https://docs.aws.amazon.com/guardduty/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsidentityandaccessmanagementiam.html">iam</a>: <a target="_blank" href="https://aws.amazon.com/iam/">AWS IAM</a> Identity and access management. [<a target="_blank" href="https://docs.aws.amazon.com/iam/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoninspector2.html">inspector2</a>: <a target="_blank" href="https://aws.amazon.com/inspector/">Amazon Inspector</a> Automated security assessment.
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awskeymanagementservice.html">kms</a>: <a target="_blank" href="https://aws.amazon.com/kms/">AWS KMS</a> Managed encryption key service. [<a target="_blank" href="https://docs.aws.amazon.com/kms/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonmacie.html">macie2</a>: <a target="_blank" href="https://aws.amazon.com/macie/">Amazon Macie</a> Discover and protect sensitive data. [<a target="_blank" href="https://docs.aws.amazon.com/macie/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsresourceaccessmanagerram.html">ram</a>: ??? Resource Access Manager
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html">secretsmanager</a>: <a target="_blank" href="https://aws.amazon.com/secrets-manager/">AWS Secrets Manager</a> Securely store and rotate secrets. [<a target="_blank" href="https://docs.aws.amazon.com/secretsmanager/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecurityhub.html">securityhub</a>: <a target="_blank" href="https://aws.amazon.com/security-hub/">AWS Security Hub</a> Centralized security and compliance. [<a target="_blank" href="https://docs.aws.amazon.com/securityhub/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsshield.html">shield</a>: <a target="_blank" href="https://aws.amazon.com/shield/">AWS Shield</a> DDoS protection. [<a target="_blank" href="https://docs.aws.amazon.com/shield/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiamidentitycenter.html">sso</a>: ??? AWS IAM Identity Center (SSO = Single Sign On)
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecuritytokenservice.html">sts</a>: ??? Security Token Service
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awswafv2.html">wafv2: <a target="_blank" href="https://aws.amazon.com/waf/">AWS WAF</a> Web application firewall. [<a target="_blank" href="https://docs.aws.amazon.com/waf/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsdirectoryservice.html">ds</a>: <a target="_blank" href="https://aws.amazon.com/directoryservice/">AWS Directory Service</a> Managed Active Directory

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscloudhsm.html">cloudhsm</a>: ??? <a target="_blank" href="https://aws.amazon.com/cloudhsm/">AWS CloudHSM</a> Hardware security module. [<a target="_blank" href="https://docs.aws.amazon.com/cloudhsm/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsfirewallmanager.html">fms</a>: ??? <a target="_blank" href="https://aws.amazon.com/firewall-manager/">AWS Firewall Manager service</a> Central firewall management. [<a target="_blank" href="https://docs.aws.amazon.com/firewall-manager/">UG</a>]


## <a target="_blank" href="https://aws.amazon.com/products/storage/">Storage</a>

"Store and manage data for every workload at scale"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html">s3</a>: <a target="_blank" href="https://aws.amazon.com/s3/">Amazon S3</a> (Simple Storage Service) for scalable object storage. [<a target="_blank" href="https://docs.aws.amazon.com/s3/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3glacier.html">glacier</a>: <a target="_blank" href="https://aws.amazon.com/glacier/">Amazon S3 Glacier</a> Low-cost archive storage. [<a target="_blank" href="https://docs.aws.amazon.com/glacier/">UG</a>]
- S3 Express, S3 Object Lambda, S3 on Outposts, S3 Tables, S3 Vectors

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonelasticblockstore.html">ebs</a>: <a target="_blank" href="https://aws.amazon.com/ebs/">Amazon EBS</a> (Elastic Block Storage) for EC2 instances. [<a target="_blank" href="https://docs.aws.amazon.com/ebs/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonelasticfilesystem.html">elasticfilesystem</a>: <a target="_blank" href="https://aws.amazon.com/efs/">Amazon Elastic File System</a> for managed file storage for EC2. [<a target="_blank" href="https://docs.aws.amazon.com/efs/">UG</a>]
- <a target="_blank" href="">fsxv: <a target="_blank" href="https://aws.amazon.com/fsx/">Amazon FSx</a> Managed file systems (Windows, Lustre, NetApp, OpenZFS). [<a target="_blank" href="https://docs.aws.amazon.com/fsx/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsstoragegateway.html">storagegateway</a>: <a target="_blank" href="https://aws.amazon.com/storagegateway/">AWS Storage Gateway</a> Hybrid cloud storage integration. [<a target="_blank" href="https://docs.aws.amazon.com/storagegateway/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsbackup.html">backup</a>: <a target="_blank" href="https://aws.amazon.com/backup/">AWS Backup</a> Centralized backup across AWS services. [<a target="_blank" href="https://docs.aws.amazon.com/backup/">UG</a>]


NOTE: Amazon Web Service (AWS) offer several types of services:
   * "SaaS" (System as a Service) which works completely from the browser like Microsoft 365, Google Drive, or Salesforce.
   * "PaaS" (Platform as a Service)
   <br /><br />


## Services by AWS Region

- <a target="_blank" href="https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/">AWS Regional Services List</a> Services available by region



<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
