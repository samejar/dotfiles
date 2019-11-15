# saw

Fast, multi-purpose tool for AWS CloudWatch Logs

# Basic

Get list of log groups

    saw groups

Get list of streams for production log group

    saw streams production

# Watch

Watch production log group

    saw watch production

Watch production log group streams for api

    saw watch production --prefix api

Watch production log group streams for api and filter for "error"

    saw watch production --prefix api --filter error

# Get

Get production log group for the last 2 hours

    saw get production --start -2h

Get production log group for the last 2 hours and filter for "error"

    saw get production --start -2h --filter error

Get production log group for api between 26th June 2018 and 28th June 2018

    saw get production --prefix api --start 2018-06-26 --stop 2018-06-28


