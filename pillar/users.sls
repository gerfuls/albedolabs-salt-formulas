users:
  tyler:
    sudouser: True
    sudo_rules: 
      - |
        ALL=(ALL) NOPASSWD: ALL
    shell: /bin/bash
    groups:
      - rvm
      - deploy
      - www-data
    ssh_auth:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDIEdbQUU0rATCnHrNwAyoiIHOOrDiPx76aMdb5pLelBG3XB2Hd5ZUamKbEFn+GZ6cKVHNxdh6JffapX46NFiAe/tHLNBX+kGcf6lR69Xq+GYury24GecqTDL+GxshpcKhRN34/Y9H/j3vaI+kfbLjGEfpal4BM68UA5Oc1+dw30bp+oHJX0hbxJ0/ezIOK4g9HUY1E2drOLFiuOxd6MdDaDjAvVvCPZwoRsAI9QpHnTRLsL4O2ShYSCYIErr3udvLpCp9Sy9u2iaH0S3SZ0pVkWARY5lcOyWuWgFZPgoI1gqulil48JtTCXCQZeoA+IxI7VNAhGi+FfBH4DaJ3nS+3 tyler@MandryMBP-Ubuntu