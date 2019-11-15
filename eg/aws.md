# AWS

# RDS

This interface reference for Amazon RDS contains documentation for a programming or command line interface you can use to manage Amazon RDS. Full documentation: [https://docs.aws.amazon.com/cli/latest/reference/rds/](https://docs.aws.amazon.com/cli/latest/reference/rds/).

View instance info:

    aws rds describe-db-instances \
      --db-instance-identifier kitt-staging-kitt-db

# Elastic Beanstalk

# ELB

Describe environments:

    aws elasticbeanstalk describe-environments

View full environment health:

     aws elasticbeanstalk describe-environment-health --environment-name kitt-staging-app-env --attribute-names All

View environment resources:

    aws elasticbeanstalk describe-environment-resources --environment-name kitt-staging-app-env


## Logs 

Use RetrieveEnvironmentInfo to obtain the set of logs:

    aws elasticbeanstalk request-environment-info --environment-name kitt-staging-app-env --info-type bundle

Setting the `info-type` to tail compiles the last lines from the application server log files of every Amazon EC2 instance in your environment.
Setting the `info-type` to bundle compresses the application server log files for every Amazon EC2 instance into a .zip file.

To retieve the logs:

    aws elasticbeanstalk retrieve-environment-info --environment-name kitt-staging-app-env --info-type bundle


# ELB

Describe load balancers:

    aws elbv2 describe-load-balancers

# Logs

Fetch logs:

    aws logs get-log-events --log-group-name "/kitt/application.log" --log-stream-name instance-TBD-20191113 --start-from-head


