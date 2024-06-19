# Validate the CloudFormation template
aws cloudformation validate-template --template-body file://C:/Users/colto/Desktop/aws/data_pipeline/data_lake.yml

# Make a quick graph of the CloudFormation template
# For pub quality graphs, use aws CloudFormation Designer
cfn-lint data_lake.yml -g


aws cloudformation create-stack \
    --stack-name datalake-stack \
    --template-body file://datalake-template.yaml \
    --parameters ParameterKey=EnvironmentName,ParameterValue=dev \
    ParameterKey=DatabaseUsername,ParameterValue=admin \
    ParameterKey=DatabasePassword,ParameterValue=YourSecurePassword \
    ParameterKey=GlueJobScriptBucket,ParameterValue=datalake-scripts-dev \
    ParameterKey=GlueJobScriptPrefix,ParameterValue=scripts \
    --capabilities CAPABILITY_NAMED_IAM

aws cloudformation create-stack \
    --stack-name datalake-stack \
    --template-body file://datalake-template.yaml \
    --parameters file://parameters.json \
    --capabilities CAPABILITY_NAMED_IAM