Role Name
=========

This role automates the process of installing the necessary M-Gateway server service gateway to allow connection to a Yottadb database via Nodejs.

Requirements
------------

It is assumed that Yottadb is aready installed on the server

Role Variables
--------------

instdir - The directory in which the M-Gateway service gateway is to be installed

[ Default - /usr/local/msgi ]

yinstdir- The directory in which Yottadb is installed on the server

[ Default - /usr/local/yottadb ]

instuser - The username used to install Yottadb on the server

[ Default - root ]


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      role: yottadb-node
      instdir: /opt/msgi
      ...

Further Information
-------------------

The git repo referenced in the role to install the service gateway:

https://github.com/chrisemunt/mgsi

License
-------

BSD

Author Information
------------------

Raman Sailopal
