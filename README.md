# osn-telegraf

This role installs telegraf for OSN pods. The role also installs ipmitool and sets a udev rule to allow the telegraf user access to /dev/ipmi*. 

See defaults/main.yml for a list of variables

Example playbook:

\- hosts:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\- all-sites  
&nbsp;&nbsp;&nbsp;remote_user: ansible  
&nbsp;&nbsp;&nbsp;become: yes  
&nbsp;&nbsp;&nbsp;become_method: sudo 
<br /><br />
&nbsp;&nbsp;&nbsp;roles:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- osn-telegraf

