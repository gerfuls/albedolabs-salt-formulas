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
  gerfuls:
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
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuEUlNszVUYadt05tVAZnZGJjuEc9pC2g7H8CV67nyXgiT7fjWKBy0N/NzO6BF1QylTPXeGh30Ig36itUkNc5MuEgEdQtDLqBTdcAxGh0rhko5At0ZhAMk0ow39qOmtvNqzBWh16D07vE5/nKj/aYO/iDu8xlwhB+Usxu87mPquqZoVxekwaWf0ZhTlljRZ4TQ+6mxflMoQ05D3r2jnBw5nrKo6MwZS6ekP+f2Rv9EuyZ6SkSLxCULb6w14BRyg5YWbbkEpzs7JhSkQrYuSCQHMvrbt560bzu7/QQXSYqQQfCUxTTRICMtlQBGzUoSVlf2afjJ+Lz6wGAURsCozU9/ jdover@mozilla.com
