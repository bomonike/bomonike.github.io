---
layout: post
date: "2026-03-07"
lastchange: "26-03-07 v019 category desc :aws-svcs.md"
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

This reference was prepared because Amazon does not provide, on one page, useful links to each service.

* Click the <strong>category title</strong> (in larger font) for the marketing page of that category. 
* The <strong>service prefix</strong> name shown for each service is the code used in granting permissions.
* Click the service prefix for details about <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">IAM Actions, resources, and condition keys</a> to grant fine-grained <strong>permissions</strong> to that service.
* Click the name of the service for the marketing page for the service. Or press commad+F to <strong>find</strong> part of a service name within this page.
   * On top of each of those pages, click <strong>Sign in to console</strong> for the console GUI.
* "[UG]" goes to the User Guide page, 
   * Within each User Guide page may optionally also be links to [API] documentation for the service.
<br /><br />

Service names begin with either "Amazon" or "AWS". Which one used by a particular service is inconsistent because a naming convention has never been published.

* "Amazon" prefix (e.g., Amazon S3, Amazon EC2, Amazon RDS) tends to be used for <strong>core</strong> building blocks of cloud computing - foundational infrastructure services that have been around since the early days of AWS. Such services are typically a discrete, <strong>provisionable</strong> service/resource (a bucket, an instance, a database, etc.).

* "AWS" prefix (e.g., AWS Lambda, AWS IAM, AWS CloudFormation) tends to be used for higher-level, platform-wide, or management/orchestration services that operate <strong>across the infrastructure</strong> rather than being a discrete resource that is individually provisioned. Such services are typically a tool, framework, or platform capability (identity management, deployment, governance, etc.).

Notable inconsistencies:

   * Amazon CloudWatch is a monitoring/management tool that spans the infrastructure.

   * AWS Glue is a data service that is provisioned

   * "SageMaker AI" and "Kiro" are being marketed without the Amazon/AWS prefix.

NOTE: Amazon Web Service (AWS) offer several types of services:
   * "SaaS" (System as a Service) which works completely from the browser like Microsoft 365, Google Drive, or Salesforce.
   * "PaaS" (Platform as a Service)
   <br /><br />



## <a target="_blank" href="https://aws.amazon.com/products/analytics/">Analytics</a>

"Optimize performance and scale for analytics and AI workloads"

(datalakes): Streaming, Data lakehouse, Data warehouse, Data lake, Data processing, Business intelligence, Search analytics, Data and AI governance

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonathena.html">athena</a>: <a target="_blank" href="https://aws.amazon.com/athena/">Amazon Athena</a> Query S3 data using SQL  [<a target="_blank" href="https://docs.aws.amazon.com/athena/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscleanrooms.html">cleanrooms</a>: <a target="_blank" href="https://aws.amazon.com/clean-rooms/">AWS Clean Rooms</a> analyze and collaborate on your collective datasets to gain new insights without revealing underlying data to one another. [<a target="_blank" href="https://docs.aws.amazon.com/clean-rooms/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsdatapipeline.html">datapipeline</a>:: <a target="_blank" href="https://aws.amazon.com/glue/">AWS Data Pipeline</a> = Glue 
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazondatazone.html">datazone</a>: <a target="_blank" href="https://aws.amazon.com/datazone/">Amazon DataZone</a> Data catalog and governance
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonelasticmapreduce.html">elasticmapreduce</a>: <a target="_blank" href="https://aws.amazon.com/emr/">Amazon EMR (Elastic Map Reduce)</a> Big data processing with Hadoop/Spark

- es: Elasticsearch Service (legacy)
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncloudsearch.html">cloudsearch</a>:: <a target="_blank" href="https://aws.amazon.com/cloudsearch/">Amazon CloudSearch</a> Managed search service.  [<a target="_blank" href="https://docs.aws.amazon.com/cloudsearch/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsglue.html">glue</a>: <a target="_blank" href="https://aws.amazon.com/glue/">AWS Glue</a> Serverless data integration (ETL) [<a target="_blank" href="https://docs.aws.amazon.com/glue/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awslakeformation.html">lakeformation</a>: <a target="_blank" href="https://aws.amazon.com/lake-formation/">AWS Lake Formation</a> Build and manage data lakes. [<a target="_blank" href="https://docs.aws.amazon.com/lake-formation/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonmanagedstreamingforapachekafka.html">kafka</a>: <a target="_blank" href="https://aws.amazon.com/msk/">Amazon MSK</a> Managed Apache Kafka service.  [<a target="_blank" href="https://docs.aws.amazon.com/msk/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonmanagedstreamingforkafkaconnect.html">kafkaconnect</a>: ??? Amazon Managed Streaming for Kafka Connect
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_apachekafkaapisforamazonmskclusters.html">kafka-cluster</a>: ??? Apache Kafka APIs for Amazon MSK clusters

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonopensearch.html">opensearch</a>: <a target="_blank" href="https://aws.amazon.com/opensearch-service/">Amazon OpenSearch Service</a> Search, analyze, and visualize data.  [<a target="_blank" href="https://docs.aws.amazon.com/opensearch-service/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonquicksight.html">quicksight</a>: <a target="_blank" href="https://aws.amazon.com/quicksight/">Amazon QuickSight</a> Business intelligence and dashboards.  [<a target="_blank" href="https://docs.aws.amazon.com/quicksight/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonredshift.html">redshift</a>: <a target="_blank" href="https://aws.amazon.com/redshift/">Amazon Redshift</a> Query S3 data from Redshift.  [<a target="_blank" href="https://docs.aws.amazon.com/redshift/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonredshiftdataapi.html">redshift-data</a>: ??? <a target="_blank" href="https://aws.amazon.com/redshift/">Amazon Redshift Data API</a>
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonredshiftserverless.html">redshift-serverless</a>: ??? <a target="_blank" href="https://aws.amazon.com/redshift/">Amazon Redshift Serverless</a>


## <a target="_blank" href="https://aws.amazon.com/products/application-integration/">Application Integration</a> (Messaging)

"Integrate distributed systems and serverless applications with less code"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridge.html">events</a>: <a target="_blank" href="https://aws.amazon.com/eventbridge/">Amazon EventBridge</a> Serverless event bus.  [<a target="_blank" href="https://docs.aws.amazon.com/eventbridge/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridgepipes.html">pipes</a>: ??? Amazon EventBridge Pipes
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridgescheduler.html">scheduler</a>: ??? Amazon EventBridge Scheduler
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridgeschemas.html">schema</a>: ??? Amazon EventBridge Schemas

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonkinesisfirehose.html">firehose</a>: <a target="_blank" href="https://aws.amazon.com/firehose/">Amazon (Kinesis) Firehose</a> Collect, process, and analyze real-time, streaming data so you can get timely insights and react quickly to new information. [<a target="_blank" href="https://docs.aws.amazon.com/firehose/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonkinesisanalyticsv2.html">kinesis</a>: <a target="_blank" href="https://aws.amazon.com/kinesis/">Amazon Kinesis Data Streams</a>   [<a target="_blank" href="https://docs.aws.amazon.com/kinesis/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonkinesisvideostreams.html">kinesisvideo</a>: <a target="_blank" href="https://aws.amazon.com/kinesis/">Amazon Kinesis Video Streams</a> real-time video streaming.
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonkinesisanalyticsv2.html">kinesisanalytics</a>: ??? Amazon Kinesis Analytics V2

- ???: <a target="_blank" href="https://aws.amazon.com/amazon-mq/">Amazon MQ</a> Managed message broker (ActiveMQ, RabbitMQ).  [<a target="_blank" href="https://docs.aws.amazon.com/amazon-mq/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonsimpleemailservicev2.html">ses</a>: <a target="_blank" href="https://aws.amazon.com/ses/">Amazon SES</a> (Simple Email Service V2) sending and receiving.  [<a target="_blank" href="https://docs.aws.amazon.com/ses/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonsns.html">sns</a>: <a target="_blank" href="https://aws.amazon.com/sns/">Amazon SNS</a> (Simple Notification Service) Pub/sub messaging and mobile push notifications.  [<a target="_blank" href="https://docs.aws.amazon.com/sns/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonsqs.html">sqs</a>: <a target="_blank" href="https://aws.amazon.com/sqs/">Amazon SQS</a> Message queuing service.  [<a target="_blank" href="https://docs.aws.amazon.com/sqs/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsstepfunctions.html"><strong>states</strong></a>: <a target="_blank" href="https://aws.amazon.com/step-functions/">AWS Step Functions</a> Orchestrate distributed applications. coordinate the components of distributed applications as a series of steps in a visual workflow. You can quickly build and run state machines to execute the steps of your application in a reliable and scalable fashion. [<a target="_blank" href="https://docs.aws.amazon.com/step-functions/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonsimpleworkflowservice.html">swf</a>:  <a target="_blank" href="https://aws.amazon.com/swf/">Simple Workflow Service</a>.  build applications that coordinate work across distributed components. In Amazon SWF, a task represents a logical unit of work that is performed by a component of your application. Coordinating tasks across the application involves managing intertask dependencies, scheduling, and concurrency in accordance with the logical flow of the application. Amazon SWF gives you full control over implementing tasks and coordinating them without worrying about underlying complexities such as tracking their progress and maintaining their state. [<a target="_blank" href="https://docs.aws.amazon.com/swf/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsappsync.html"">appsync</a>: <a target="_blank" href="https://aws.amazon.com/appsync/">AWS AppSync</a> Managed GraphQL API service.  [<a target="_blank" href="https://docs.aws.amazon.com/appsync/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonappflow.html">appflow</a>: <a target="_blank" href="https://aws.amazon.com/appflow/">Amazon AppFlow</a> API to integrate SaaS apps with AWS services to securely transfer data. No-code. [<a target="_blank" href="https://docs.aws.amazon.com/appflow/">UG</a>]


## <a target="_blank" href="https://aws.amazon.com/ai/">Artificial intelligence</a> (AI)

"Build and scale the next wave of AI innovation on AWS"

- augmentedai: sagemaker-a2i-runtime: <a target="_blank" href="https://aws.amazon.com/augmented-ai/">Amazon Augmented AI (A2I)</a> API a2i-runtime.sagemaker to integrate human reviews with Amazon Textract to verify or override ML predictions.  [<a target="_blank" href="https://docs.aws.amazon.com/augmented-ai/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonbedrock.html">bedrock</a>: <a target="_blank" href="https://aws.amazon.com/bedrock/">Amazon Bedrock</a> Foundation models for generative AI.  [<a target="_blank" href="https://docs.aws.amazon.com/bedrock/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonbedrockagentcore.html">bedrock-agentcore</a>: ??? Amazon Bedrock AgentCore - Deploy and operate highly effective agents securely, at scale using any framework and model.

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncomprehend.html">comprehend</a>: <a target="_blank" href="https://aws.amazon.com/comprehend/">Amazon Comprehend</a> Natural language processing (NLP). [<a target="_blank" href="https://docs.aws.amazon.com/comprehend/">UG</a>]
- comprehendmedical:

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonecsmcpservice.html">ecs-mcp</a>: ??? Amazon ECS MCP Service

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonforecast.html">forecast</a>: <a target="_blank" href="https://aws.amazon.com/forecast/">Amazon Forecast</a> Time-series forecasting.  [<a target="_blank" href="https://docs.aws.amazon.com/forecast/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonfrauddetector.html">frauddetector</a>: <a target="_blank" href="https://aws.amazon.com/frauddetector/">Fraud Detector</a>.  [<a target="_blank" href="https://docs.aws.amazon.com/frauddetector/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonkendra.html">kendra</a>: <a target="_blank" href="https://aws.amazon.com/kendra/">Amazon Kendra</a> Intelligent enterprise search.  [<a target="_blank" href="https://docs.aws.amazon.com/kendra/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonkendraintelligentranking.html">kendra-ranking</a>: Amazon Kendra Intelligent Ranking

- ???: <a target="_blank" href="https://bomonike.github.io/aws-kiro/">AWS Kiro.dev</a> AI Agent development IDE & CLI (incorporates Amazon Q).  [<a target="_blank" href="https://bomonike.github.io/aws-kiro/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonlexv2.html">lex</a>: <a target="_blank" href="https://aws.amazon.com/lex/">Amazon Lex</a> Build conversational chatbots.  [<a target="_blank" href="https://docs.aws.amazon.com/lex/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonnovaact.html">nova-act</a>: <a target="_blank" href="https://aws.amazon.com/nova/act/">Amazon Nova Act</a> SaaS to use a custom Nova 2 Lite model to build fleets of reliable agents to automate production UI workflows at scale (navigating & filling forms, extracting info).
- ???: <a target="_blank" href="https://aws.amazon.com/nova/forge/">Amazon Nova Forge</a> use HyperPod CLI to build custom frontier models. Reinforment Learning in customer environment with proprietary data. [<a target="_blank" href="https://docs.aws.amazon.com/sagemaker/latest/dg/nova-forge.html">UG</a>]

- ???: <a target="_blank" href="https://partyrock.aws">PartyRock.aws</a> Website to create reusable,
useful and delightful apps with generative AI prompts.  [<a target="_blank" href="https://docs.aws.amazon.com/appflow/">UG</a>] <a target="_blank" href="https://www.youtube.com/watch?v=96SiaQnKfJY">VIDEO</a>
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonpersonalize.html">personalize</a>: <a target="_blank" href="https://aws.amazon.com/personalize/">Amazon Personalize</a> Real-time personalization and recommendations.  [<a target="_blank" href="https://docs.aws.amazon.com/personalize/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonpolly.html">polly</a>: <a target="_blank" href="https://aws.amazon.com/polly/">Amazon Polly</a> Text-to-speech service.  [<a target="_blank" href="https://docs.aws.amazon.com/polly/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonrekognition.html">rekognition</a>: <a target="_blank" href="https://aws.amazon.com/rekognition/">Amazon Rekognition</a> Image and video analysis.  [<a target="_blank" href="https://docs.aws.amazon.com/rekognition/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonq.html">q</a>: <a target="_blank" href="https://aws.amazon.com/q/">Amazon Q</a> AI-powered assistant for developers and businesses.  [<a target="_blank" href="https://docs.aws.amazon.com/q/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonqbusiness.html">qbusiness</a>: ??? Amazon Q Business
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonqbusinessqapps.html">qapps</a>: ??? Amazon Q Business Q Apps
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonqdeveloper.html">qdeveloper</a>: ??? Amazon Q Developer
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonqinconnect.html"><strong>wisdom</strong></a>: ??? <a target="_blank" href="https://builder.aws.com/content/2xOKbcx5jZyU9HcFXMcmxzi20t8/amazon-q-in-connect-for-generative-ai-powered-self-service">Amazon Q in Connect</a>  helps customer service agents quickly find the information they need by searching all connected sources at once in Salesforce and ServiceNow, as well as company wikis, FAQs, and file systems. Uses Contact Lens to understand customer issues.

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonsagemaker.html">sagemaker</a>: <a target="_blank" href="https://aws.amazon.com/sagemaker/">Amazon SageMaker (AI)</a> Build, train, and deploy ML models. [<a target="_blank" href="https://docs.aws.amazon.com/sagemaker/">UG</a>]
- ???: SageMaker Clarify > detect and mitigate bias (data skew) in ML models before and after deployment.
- ???: SageMaker Model Miner > Monitor models in production to detect quality issues or performance degradation, such as model & data drift and feature distribution. Notify users of deviations found.
- ???: SageMaker Model Cards > Document (version controlled) critical details of ML models for governance. Features include model overview, intended uses, risk ratings, evalution metrics, definitions, training details.
- Amazon SageMaker data science assistant
- Amazon SageMaker geospatial capabilities
- Amazon SageMaker Unified Studio MCP
- Amazon SageMaker with MLflow

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazontextract.html">textract</a>: <a target="_blank" href="https://aws.amazon.com/textract/">Amazon Textract</a> Extract text and data from documents.  [<a target="_blank" href="https://docs.aws.amazon.com/textract/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazontranscribe.html">transcribe</a>: <a target="_blank" href="https://aws.amazon.com/transcribe/">Amazon Transcribe</a> Speech-to-text service.  [<a target="_blank" href="https://docs.aws.amazon.com/transcribe/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazontranslate.html">translate</a>: <a target="_blank" href="https://aws.amazon.com/translate/">Amazon Translate</a> Language translation service.  [<a target="_blank" href="https://docs.aws.amazon.com/translate/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsappstudio.html">appstudio</a>: <a target="_blank" href="https://aws.amazon.com/appstudio/">AWS App Studio</a> Build enterprise-grade applications, using natural language. [<a target="_blank" href="https://docs.aws.amazon.com/appstudio/latest/userguide/welcome.htmlZ">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awstransform.html">transform</a>: <a target="_blank" href="https://aws.amazon.com/transform/">AWS Transform</a> Modernize .NET applications to Linux-ready cross-platform .NET. Migrate IBM z/OS and VMware to AWS EC2. Modernize [<a target="_blank" href="https://docs.aws.amazon.com/transform/">UG</a>]
- AWS Transform custom

- ???: <a target="_blank" href="https://aws.amazon.com/deeplens/">AWS DeepLens</a> Deep learning enabled video camera [discontinued]
- ???: <a target="_blank" href="https://aws.amazon.com/deepracer/">AWS DeepRacer</a> Autonomous racing car for ML learning


## <a target="_blank" href="https://aws.amazon.com/blockchain/">Blockchain (Web3)</a>

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonmanagedblockchain.html">blockchain</a>: <a target="_blank" href="https://aws.amazon.com/managed-blockchain/">Amazon Managed Blockchain</a> Create and manage blockchain networks
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonmanagedblockchainquery.html">blockchain</a>:Amazon Managed Blockchain Query

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonqldb.html">qldb</a>: <a target="_blank" href="https://aws.amazon.com/qldb/">Amazon QLDB</a> Immutable, cryptographically verifiable ledger database


## Messaging <a target="_blank" href="https://aws.amazon.com/business-applications/">Business applications</a>

"Cloud and native applications built on and by AWS"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonconnect.html">connect</a>: <a target="_blank" href="https://aws.amazon.com/connect/">Amazon Connect</a> a cloud contact center as a service (CCaaS) solution that offers easy, self-service configuration and enables dynamic, personal, and natural customer engagement at any scale. Creates an Amazon Q Domain (Assistant)  and an integration with pre-configured connectors such as Salesforce, Zendesk, Microsoft SharePoint, ServiceNow, Amazon S3, etc. [<a target="_blank" href="https://docs.aws.amazon.com/connect/">UG</a>]

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

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsapprunner.html">app-runner</a>: <a target="_blank" href="https://aws.amazon.com/apprunner/">AWS App Runner</a> Deploy containerized web apps easily. [<a target="_blank" href="https://docs.aws.amazon.com/apprunner/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsbatch.html">batch</a>: <a target="_blank" href="https://aws.amazon.com/batch/">AWS Batch</a> Batch computing at any scale. [<a target="_blank" href="https://docs.aws.amazon.com/batch/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonec2.html">ec2: <a target="_blank" href="https://aws.amazon.com/ec2/">Amazon EC2</a> Virtual servers in the cloud.  [<a target="_blank" href="https://docs.aws.amazon.com/ec2/">UG</a>]
- Amazon EC2 Auto Scaling
- Amazon EC2 Image Builder
- Amazon EC2 Instance Connect

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awslambda.html">lambda</a>: <a target="_blank" href="https://aws.amazon.com/lambda/">AWS Lambda</a> Run code without managing servers (serverless). [<a target="_blank" href="https://docs.aws.amazon.com/lambda/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonlightsail.html">lightsail: <a target="_blank" href="https://aws.amazon.com/lightsail/">AWS Lightsail</a> Simple virtual private servers. [<a target="_blank" href="https://docs.aws.amazon.com/lightsail/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awselasticbeanstalk.html">elasticbeanstalk</a>: <a target="_blank" href="https://aws.amazon.com/elasticbeanstalk/">Elastic Beanstalk</a> Deploy and scale web applications. 

* robomaker: AWS RoboMaker > Develop, test, and deploy robotics applications. Shut down September 10, 2025.

   The service failed to gain enough traction in the market. It was essentially built for iRobot (maker of the Roomba), and there wasn't sufficient due diligence to determine if it was useful for anyone else.
   
   On December 14, 2025, iRobot filed for Chapter 11 bankruptcy protection. After 35 years, the company is` acquired by China's Shenzhen Picea Robotics — the manufacturer contracted to build Roombas.

   AWS Batch is the primary recommended replacement. Migrating means containerizing your ROS/Gazebo simulation apps into Docker images, pushing them to ECR, then creating Batch compute environments and job queues to run those containers.
   The tradeoff is that you lose integrated RoboMaker features like the WorldForge GUI and on-demand development IDE, but gain more control over instance types, unlimited scaling, and better cost optimization through Spot instances — with no Batch service fee. NBC Sports Sonnet 4.6


<a name="Containers"></a>

## <a target="_blank" href="https://aws.amazon.com/containers/">Containers</a> (Compute)

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonelasticcontainerregistry.html">ecr</a>: ??? Amazon Elastic Container Registry - Fully-managed Docker container registry : Share and deploy container software, publicly or privately. Competes with Artifactory. [<a target="_blank" href="https://docs.aws.amazon.com/ecr/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonelasticcontainerservice.html">ecs</a>: <a target="_blank" href="https://aws.amazon.com/ecs/">Amazon Elastic Container Service</a> for orchestration. [<a target="_blank" href="https://docs.aws.amazon.com/ecs/">UG</a>]
- Amazon Elastic Container Registry Public
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonelastickubernetesservice.html">eks</a>: <a target="_blank" href="https://aws.amazon.com/eks/">Amazon Elastic Kubernetes Service</a>.  [<a target="_blank" href="https://docs.aws.amazon.com/eks/">UG</a>]
- ???: Red Hat OpenShift Service on AWS - Fully managed Red Hat OpenShift service on AWS

* fargate is a part of AmazonECS: Serverless compute capacity provider for containers obtained from ECR. [<a target="_blank" href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS_Fargate.html">UG</a>]



## <a target="_blank" href="https://aws.amazon.com/products/databases/">Database</a>

"Power AI and data-driven applications at any scale"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonkeyspacesforapachecassandra.html">cassandra</a>: <a target="_blank" href="https://aws.amazon.com/keyspaces/">Amazon Keyspaces (for Apache Cassandra)</a> Managed open-source Cassandra-compatible database. [<a target="_blank" href="https://docs.aws.amazon.com/keyspaces/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazondynamodbacceleratordax.html">dax</a>: ??? Amazon DynamoDB Accelerator (DAX)
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazondocumentdbelasticclusters.html">docdb-elastic</a>: <a target="_blank" href="https://aws.amazon.com/documentdb/">Amazon DocumentDB Elastic Clusters</a> MongoDB-compatible document database. [<a target="_blank" href="https://docs.aws.amazon.com/documentdb/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazondynamodb.html">dynamodb</a>: <a target="_blank" href="https://aws.amazon.com/dynamodb/">Amazon DynamoDB</a> Fast, flexible NoSQL database. [<a target="_blank" href="https://docs.aws.amazon.com/dynamodb/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonelasticache.html">elasticache</a>: <a target="_blank" href="https://aws.amazon.com/elasticache/">Amazon ElastiCache</a> In-memory caching (Redis, Memcached). [<a target="_blank" href="https://docs.aws.amazon.com/elasticache/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonneptune.html">neptune</a>: <a target="_blank" href="https://aws.amazon.com/neptune/">Amazon Neptune</a> Graph database service. [<a target="_blank" href="https://docs.aws.amazon.com/neptune/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonneptuneanalytics.html">neptune-graph</a>: Amazon Neptune Analytics

* <strike>qldb</strike>: <a target="_blank" href="https://aws.amazon.com/blogs/aws/now-available-amazon-quantum-ledger-database-qldb/">Amazon Quantum Ledger Database (QLDB)</a> Fully managed ledger database. Available Sep. 10, 2019. Ended July 31, 2025.

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonrds.html">rds</a>: <a target="_blank" href="https://aws.amazon.com/rds/">Amazon RDS</a> (Relational Database System) Managed MySQL, PostgreSQL, SQL Server, etc.). [<a target="_blank" href="https://docs.aws.amazon.com/qldb/">UG</a>]
- (rds) <a target="_blank" href="">aurora</a>? <a target="_blank" href="https://aws.amazon.com/rds/aurora/">Amazon Aurora</a> High-performance MySQL and PostgreSQL compatible database. [<a target="_blank" href="https://docs.aws.amazon.com/rds/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonredshift.html">redshift</a>: <a target="_blank" href="https://aws.amazon.com/redshift/">Amazon Redshift</a> Fast, scalable data warehouse. [<a target="_blank" href="https://docs.aws.amazon.com/qldb/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazontimestream.html">timestream</a>: <a target="_blank" href="https://aws.amazon.com/timestream/">Amazon Timestream</a> Time series database. [<a target="_blank" href="https://docs.aws.amazon.com/qldb/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonmemorydb.html">memorydb</a>: <a target="_blank" href="https://aws.amazon.com/memorydb/">Amazon MemoryDB for Redis</a> Redis-compatible, durable in-memory database. [<a target="_blank" href="https://docs.aws.amazon.com/memorydb/">UG</a>]


## <a target="_blank" href="https://aws.amazon.com/products/developer-tools/">Developer Tools</a>

"Develop applications on AWS faster and easier"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonbraket.html">braket</a>: <a target="_blank" href="https://aws.amazon.com/braket/">Amazon Braket</a> Explore and experiment with quantum computing. [<a target="_blank" href="https://docs.aws.amazon.com/braket/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscloud9.html">cloud9</a>: <a target="_blank" href="https://aws.amazon.com/cloud9/">AWS Cloud9</a> Cloud-based IDE. [<a target="_blank" href="https://docs.aws.amazon.com/cloud9/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscloudshell.html">cloudshell</a>: <a target="_blank" href="https://aws.amazon.com/cloudshell/">AWS CloudShell</a> Browser-based shell. [<a target="_blank" href="https://docs.aws.amazon.com/cloudshell/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscodeartifact.html">codeartifact</a>: <a target="_blank" href="https://aws.amazon.com/codeartifact/">AWS CodeArtifact</a> Managed artifact repository. [<a target="_blank" href="https://docs.aws.amazon.com/codeartifact/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscodebuild.html">codebuild</a>: <a target="_blank" href="https://aws.amazon.com/codebuild/">AWS CodeBuild</a> Build and test code. [<a target="_blank" href="https://docs.aws.amazon.com/codebuild/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscodecommit.html">codecommit</a>: <a target="_blank" href="https://aws.amazon.com/codecommit/">AWS CodeCommit</a> Git repository hosting. [<a target="_blank" href="https://docs.aws.amazon.com/codecommit/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscodedeploy.html">codedeploy</a>: <a target="_blank" href="https://aws.amazon.com/codedeploy/">AWS CodeDeploy</a> Automate code deployments. [<a target="_blank" href="https://docs.aws.amazon.com/codedeploy/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncodeguru.html">codeguru</a>: <a target="_blank" href="https://aws.amazon.com/codeguru/">AWS CodeGuru</a> AI-powered code reviews and performance recommendations. [<a target="_blank" href="https://docs.aws.amazon.com/codeguru/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscodepipeline.html">codepipeline</a>: <a target="_blank" href="https://aws.amazon.com/codepipeline/">AWS CodePipeline</a> Continuous integration and delivery. [<a target="_blank" href="https://docs.aws.amazon.com/codepipeline/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscodestar.html">codestar</a>: ??? AWS CodeStar
- AWS CodeStar Connections
- AWS CodeStar Notifications

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsx-ray.html">xray</a>: <a target="_blank" href="https://aws.amazon.com/xray/">AWS X-Ray</a> Trace and analyze distributed applications. [<a target="_blank" href="https://docs.aws.amazon.com/xray/">UG</a>]



## <a target="_blank" href="https://aws.amazon.com/products/end-user-computing/">End User Computing</a>

"Run cloud-native virtual desktops, secure web browsers, and streaming apps"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonappstream2.0.html">appstream</a>: <a target="_blank" href="https://aws.amazon.com/appstream2/">Amazon AppStream 2.0</a> Stream desktop applications. [<a target="_blank" href="https://docs.aws.amazon.com/appstream2/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonworkdocs.html">workdocs</a>: <a target="_blank" href="https://aws.amazon.com/workdocs/">Amazon WorkDocs</a> Secure document collaboration. [<a target="_blank" href="https://docs.aws.amazon.com/workdocs/">No UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonworkmail.html">workmail</a>: <a target="_blank" href="https://aws.amazon.com/workmail/">Amazon WorkMail</a> Secure email and calendaring.  [<a target="_blank" href="https://docs.aws.amazon.com/workmail/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonworkmailmessageflow.html">workmailmessageflow</a>: ??? Amazon WorkMail Message Flow

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonworkspaces.html">workspaces</a>: <a target="_blank" href="https://aws.amazon.com/workspaces/">Amazon WorkSpaces</a> Virtual desktops in the cloud. [<a target="_blank" href="https://docs.aws.amazon.com/workspaces/">UG</a>]

* <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonworklink.html">worklink</a>: ??? Amazon WorkLink > Secure mobile access to internal websites.


## <a target="_blank" href="https://aws.amazon.com/gamelift/">Game Tech</a>

Build breakthrough gaming experiences

* <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazongameliftservers.html">gamelift</a>: <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazongameliftservers.html#amazongameliftservers-actions-as-permissions">Amazon GameLift Servers</a> Game server hosting purpose-built to power the world's most demanding games. No UG.

* <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazongameliftstreams.html">gameliftstreams</a>: ??? <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazongameliftstreams.html">Amazon GameLift Streams</a> - Managed service for low-latency, high frame rate game streaming at global scale. No UG.


## <a target="_blank" href="https://aws.amazon.com/iot/">IoT (Internet of Things)</a>

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html">iot</a>: <a target="_blank" href="https://aws.amazon.com/iot-core/">AWS IoT Core</a> Connect devices to the cloud. [<a target="_blank" href="https://docs.aws.amazon.com/iot/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html">iotanalytics</a>: <a target="_blank" href="https://aws.amazon.com/iot-analytics/">AWS IoT Analytics</a> Analytics for IoT devices.
- AWS IoT Core Device Advisor
- AWS IoT Device Tester
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotevents.html">iotevents</a>: <a target="_blank" href="https://aws.amazon.com/iot-events/">AWS IoT Events</a> Detect and respond to IoT events.

- AWS IoT Fleet Hub for Device Management
- AWS IoT FleetWise
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotgreengrass.html">greengrass</a>: <a target="_blank" href="https://aws.amazon.com/greengrass/">AWS IoT Greengrass V2</a> Local compute, messaging, and sync for devices. Version 2 [<a target="_blank" href="https://docs.aws.amazon.com/greengrass/">UG</a>]

- AWS IoT Jobs DataPlane
- AWS IoT Managed Integrations
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotsitewise.html">iotsitewise</a>: <a target="_blank" href="https://aws.amazon.com/iot-sitewise/">AWS IoT SiteWise</a> Collect and organize industrial equipment data. [<a target="_blank" href="https://docs.aws.amazon.com/iot-sitewise/">UG</a>]
- AWS IoT TwinMaker
- AWS IoT Wireless
- ???: <a target="_blank" href="https://aws.amazon.com/iot-device-management/">AWS IoT Device Management</a> Register, organize, and manage IoT devices. [<a target="_blank" href="https://docs.aws.amazon.com/iot-device-management/">UG</a>]



## <a target="_blank" href="https://aws.amazon.com/products/management-and-governance/">Management Tools</a> (& Monitoring)

"Organize, track, and optimize how you use AWS"

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsactionrecommendations.html">action-recommendations</a>: ??? Action Recommendations > actions in the AWS Management Console.
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

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscontroltower.html">controltower</a>: <a target="_blank" href="https://aws.amazon.com/controltower/">AWS Control Tower</a> Set up and govern multi-account environments
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awslicensemanager.html">license-manager</a>: <a target="_blank" href="https://aws.amazon.com/license-manager/">AWS License Manager</a> Manage software licenses

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
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsdirectconnect.html">directconnect</a>: <a target="_blank" href="https://aws.amazon.com/directconnect/">AWS Direct Connect</a> Dedicated network connection to AWS. [<a target="_blank" href="https://docs.aws.amazon.com/directconnect/">UG</a>]
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

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoncognitoidentity.html">cognito-identity</a>: <a target="_blank" href="https://aws.amazon.com/cognito/">Amazon Cognito Identity</a> Federated User authentication and authorization. [<a target="_blank" href="https://docs.aws.amazon.com/cognito/">UG</a>]
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
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiamidentitycenter.html">sso</a>: (Single Sign On) ??? AWS IAM Identity Center
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
- fsxv: <a target="_blank" href="https://aws.amazon.com/fsx/">Amazon FSx</a> Managed file systems (Windows, Lustre, NetApp, OpenZFS). [<a target="_blank" href="https://docs.aws.amazon.com/fsx/">UG</a>]
- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsstoragegateway.html">storagegateway</a>: <a target="_blank" href="https://aws.amazon.com/storagegateway/">AWS Storage Gateway</a> Hybrid cloud storage integration. [<a target="_blank" href="https://docs.aws.amazon.com/storagegateway/">UG</a>]

- <a target="_blank" href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsbackup.html">backup</a>: <a target="_blank" href="https://aws.amazon.com/backup/">AWS Backup</a> Centralized backup across AWS services. [<a target="_blank" href="https://docs.aws.amazon.com/backup/">UG</a>]



## Services by AWS Region

- <a target="_blank" href="https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/">AWS Regional Services List</a> Services available by region



<hr />
<sub>{{ page.lastchange }} created {{ page.created }}</sub>
