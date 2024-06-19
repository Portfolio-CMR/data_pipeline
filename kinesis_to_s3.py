import json
import boto3

s3 = boto3.client('s3')

def handler(event, context):
    for record in event['Records']:
        payload = record['kinesis']['data']
        print("Decoded payload: " + payload)
        s3.put_object(Bucket='your-landing-bucket', Key='data_from_kinesis', Body=payload)
    return {
        'statusCode': 200,
        'body': json.dumps('Data processed successfully')
    }