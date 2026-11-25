# Project 20: Load Balanced App Deployment

## Objective
Deploy two EC2 web servers behind an AWS Application
Load Balancer and verify traffic distribution.

## Technologies
- Amazon EC2
- Application Load Balancer
- Target Groups
- Ubuntu Linux
- Nginx
- EC2 User Data

## Implementation
1. Created ALB and EC2 security groups.
2. Launched two Ubuntu EC2 instances.
3. Configured Nginx using EC2 User Data.
4. Created the project20-target-group.
5. Registered both EC2 instances.
6. Configured HTTP health checks on /health.
7. Created project20-alb.
8. Enabled the required Availability Zones.
9. Tested load balancing using multiple HTTP requests.

## Verification
Two EC2 servers successfully responded to requests
sent through the Application Load Balancer.

Server 1: ip-172-31-2-154
Server 2: ip-172-31-5-118

## Conclusion
Successfully demonstrated traffic distribution across
two AWS EC2 instances using Application Load Balancer.
