# Project-1
Week 13 Project
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

<img width="1307" alt="Week 12 Diagram" src="https://user-images.githubusercontent.com/81786950/113483813-2abe1580-945a-11eb-8dff-124b720af353.png">

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Ansible file may be used to install only certain pieces of it, such as Filebeat.

  Project-1/Ansible

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly availiable, in addition to restricting attacks to the network.
Load balancers protect the system from DDoS attacks by shifting attack traffic. The advantage of a jump box is to give access to the user from a single node that can be secured and monitored.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system performance.
*Filebeat monitors the log files or locations specified, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.
*Metricbeat is an extremely easy-to-use, efficient and reliable metric shipper for monitoring your system and the processes running on it. The configuration details of each machine may be found below.

The configuration details of each machine may be found below.


| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web-1    | Server   | 10.0.0.5   | Linux            |
| Web-2    | Server   | 10.0.0.6   | Linux            |
| Web-3    | Server   | 10.0.0.7   | Linux            |
| Elk-Server | Monitoring | 10.1.0.4 |Linux           |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
* 5601 Kibana port

Machines within the network can only be accessed by Jump-Box-Provisioner Public IP: 40:122:215172 Private IP: 10.0.0.4


A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 |    99.67.16.95
|   Web-1  |   NO                |  10.0.0.4            |
|   Web-2  |   NO                |  10.0.0.4            |
|   Web-3  |   NO                |  10.0.0.4            |
| Elk-server|   NO               |  10.0.0.4            |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it was easy to do and prevented any easily overloook vulnerablities.

The playbook implements the following tasks:
Install docker.io
Install python3-pip
Install docker via pip
Increase vitual memory
Use more memory
Download and launch a docker elk container - starts docker and establishes the ports being used.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

<img width="588" alt="Docker ps ELK" src="https://user-images.githubusercontent.com/81786950/113483769-f8141d00-9459-11eb-9679-71d46a03b740.png">

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
-Jump Box 10.0.0.4
-Web-1  10.0.0.5
-Web-2  10.0.0.6
-Web-3  10.0.0.7

We have installed the following Beats on these machines:
-filebeat-7.6.1-amd64.deb

These Beats allow us to collect the following information from each machine:
-Filebeat is used to send your log files to kibana. Filebeat monitors and collects log events on specificed servers.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the Filebeat-configuration.yml file to ELK VM.
- Update the hosts file to include 10.0.0.4, 10.0.0.5, 10.0.0.6, 10.0.0.7
- Run the playbook, and navigate to Kibana to check that the installation worked as expected.

_Which file is the playbook? ansible-playbook filebeat-playbook.yml
_Where do you copy it? /etc/ansible/roles
_Which file do you update to make Ansible run the playbook on a specific machine?
/etc/ansible/host file ( IP of the Virtual Machines )
How do I specify which machine to install the ELK server on versus which to install Filebeat on?_ I have to specify two separate groups in the /etc/ansible/hosts file. One of the groups will be webservers which has the IP's of the VM's that I will Install Filebeat to. The other group is named elkservers which will have the IP if the VM I will install ELK to. 
- _Which URL do you navigate to in order to check that the ELK server is running? http://<elk-server-ip>:5601/app/kibana
<img width="796" alt="Screen Shot 2021-04-03 at 9 19 29 AM" src="https://user-images.githubusercontent.com/81786950/113484643-45928900-945e-11eb-8edd-eb280e4399a3.png">
