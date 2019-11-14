# AWS

# RDS

This interface reference for Amazon RDS contains documentation for a programming or command line interface you can use to manage Amazon RDS. Full documentation: [https://docs.aws.amazon.com/cli/latest/reference/rds/](https://docs.aws.amazon.com/cli/latest/reference/rds/).

View instance info:

    aws rds describe-db-instances \
      --db-instance-identifier kitt-staging-kitt-db

# Logs

Fetch logs:

    aws logs get-log-events --log-group-name "/kitt/application.log" --log-stream-name instance-TBD-20191113 --start-from-head   