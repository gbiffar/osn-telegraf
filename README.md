# osn-telegraf

This role installs telegraf for OSN pods. The role also installs ipmitool and sets a udev rule to allow the telegraf user access to /dev/ipmi*. 

See defaults/main.yml for a list of variables

Example playbook

  - hosts:
      - all-sites
    remote_user: ansible
    become: yes
    become_method: sudo

    roles:
      - osn-telegraf

