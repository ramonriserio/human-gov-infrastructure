output "state_infrastructure_outputs" {
  value = {
    for state, infrastructure in module.aws_humangov_infrastructure :
    state => {
      ec2_public_dns = infrastructure.state_ec2_public_dns
      s3_bucket      = infrastructure.state_s3_bucket
      dynamodb_table = infrastructure.state_dynamodb_table
    }
  }
}