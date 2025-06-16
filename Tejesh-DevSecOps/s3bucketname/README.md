📦 AWS S3 Bucket Filter Script
This Bash script lists all Amazon S3 buckets available to your AWS CLI configuration and filters the bucket names based on a region prefix provided as a command-line argument. It then saves the filtered results to a file named bucketnames.txt.

🚀 How It Works
Checks whether a region prefix (e.g., us, eu) is passed as an argument.
Uses aws s3 ls to list all available S3 buckets.
Uses awk to extract the bucket name from each line.
Uses grep to filter only those bucket names that contain the specified prefix.
Saves the matched bucket names to bucketnames.txt.

🧰 Prerequisites
AWS CLI installed and configured (aws configure)
Create an IAM roles with permission to list S3 buckets, if using Ec2 then attach the roles to the Ec2 instance
How to attach IAM Roles to Ec2 :- https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/attach-iam-role.html
Unix/Linux shell with bash, awk, and grep available

▶️ Usage
bash filename argument(region) i.e bash s3_name us here us is the region name

📁 Output
The filtered list of S3 bucket names will be saved in: ./bucketnames.txt
 

✅ Notes
The region variables (region1, region2, etc.) are only for reference and are not used in the actual filtering. The script filters based on the argument you provide.
If no matching buckets are found, the output file will be empty.
You can also change the name of the log file.

