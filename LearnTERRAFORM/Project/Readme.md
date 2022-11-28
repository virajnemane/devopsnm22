# Project Detail
Create below infrastructre with terraform code.
- 1 VPC - **Tata** 
- 1 IG - **TataIG**
- Attach IG with VPC
- 2 PUB subnet - **DEVPubSubnet** and **PRODPubSubnet**
- 2 PUB Route Table - **DEVPubRT** and **PRODPubRT**
- Associate subnet to route table
- add default route in route table (0.0.0.0/0 to get internet acceess)
- 2 Security Group - **DEVPubSG** and **PRODPubSG**
- open ssh port for 0.0.0.0/0

# - How to test
- Spin 1 ec2 in each subnet
- Login on each server and ping yahoo.com