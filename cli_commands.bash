# Validate the CloudFormation template
aws cloudformation validate-template --template-body file://C:/Users/colto/Desktop/aws/data_pipeline/data_lake.yml


# Create the CloudFormation stack
aws cloudformation create-stack \
    --stack-name MyDataLake \
    --template-body file://data-lake-template.yaml \
    --parameter-overrides file://parameters.json

# Update the CloudFormation stack