Building a simple LAMP stack and deploying Application using Ansible Playbooks.
-------------------------------------------

The playbooks refers to the simple LAMP stack of ansible example repository

Infrastructure is spinup with docker-compose
Managed nodes use Ubuntu xenial, it's a self contained test


This LAMP stack is on multiple nodes. The inventory file
'inventory_hosts' defines the nodes in which the stacks should be configured.

Here the webserver would be configured on the local host and the dbserver on a
server called `bensible`. The stack can be deployed using the following
command:

        ansible-playbook -i hosts site.yml

Once done, you can check the results by browsing to http://localhost/index.php.
You should see a simple test page and a list of databases retrieved from the
database server.
