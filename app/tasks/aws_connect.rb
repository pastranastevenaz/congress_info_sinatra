#!/usr/bin/env ruby

require 'rubygems'
require 'aws-sdk'


file_name='/app/house_bills/public/current_house.csv'
S3_BUCKET='congressinfo'
key1='current_house.csv'
key2='current_senate.csv'


Aws.config.update(
        access_key_id: 'AKIAIOBDMOSOWBBH4LYQ',
        secret_access_key: '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',
        force_path_style: true,
        region: 'us-west-1'
)


s3 = Aws::S3::Resource.new


bucket = S3_BUCKET

obj1 = s3.bucket(bucket).object(key1)
obj1.upload_file('../house_bills/public/current_house.csv', acl:'public-read')
puts obj1.public_url

obj2 = s3.bucket(bucket).object(key2)
obj2.upload_file('../senate_bills/public/current_senate.csv', acl:'public-read')
puts obj1.public_url
