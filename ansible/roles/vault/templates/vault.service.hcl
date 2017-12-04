[Unit]
Description=vault server
Requires=network-online.target
After=network-online.target consul.service

[Service]
EnvironmentFile=-/etc/sysconfig/vault
Restart=on-failure
ExecStart=/usr/sbin/vault server -config=/etc/vault.d/vault.hcl

[Install]
WantedBy=multi-user.target