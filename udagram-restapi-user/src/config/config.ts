export const config = {
  "dev": {
    "username": process.env.POSTGRES_USER,
    "password": process.env.POSTGRES_PASSWORD,
    "database": process.env.POSTGRES_DATABASE,
    "host": process.env.POSTGRES_HOST,
    "dialect": "postgres",
    "aws_region": process.env.AWS_REGION,
    "aws_profile": process.env.AWS_PROFILE,
    "aws_media_bucket": process.env.AWS_MEDIA_BUCKET,
    "aws_access_key_id": process.env.ACCESS_KEY_ID,
    "aws_secret_access_key": process.env.SECRET_ACCESS_KEY    
  },
  "prod": {
    "username": process.env.POSTGRES_USER,
    "password": process.env.POSTGRES_PASSWORD,
    "database": process.env.POSTGRES_DATABASE,
    "host": process.env.POSTGRES_HOST,
    "aws_profile": process.env.AWS_PROFILE,
    "dialect": "postgres",
    "aws_access_key_id": process.env.ACCESS_KEY_ID,
    "aws_secret_access_key": process.env.SECRET_ACCESS_KEY
  }
}
