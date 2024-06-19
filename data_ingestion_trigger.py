import json

def handler(event, context):
    print("Data ingestion triggered")
    return {
        'statusCode': 200,
        'body': json.dumps('Data ingestion successful')
    }