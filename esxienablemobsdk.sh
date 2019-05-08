cd /etc/vmware/rhttpproxyca
cp endpoints.conf /tmp/endpoints.conf
chmod +w /tmp/endpoints.conf
file_location=/tmp/endpoints.conf
cat > $file_location <<EOF
/                    local           8309                             redirect       allow
/sdk                 local           8307                             allow          allow
/client/clients.xml  local           8309                             allow          allow
/ui                  local           8308                             redirect       allow
/vpxa                local           8089                             reject         allow
/mob                 namedpipe       /var/run/vmware/proxy-mob        allow          allow
/wsman               local           8889                             redirect       allow
/sdkTunnel           namedpipetunnel /var/run/vmware/proxy-sdk-tunnel allow          reject
/ha-nfc              local           12001                            allow          allow
/nfc                 local           12000                            allow          allow
/folder              local           8309                             redirect       allow
/host                local           8309                             redirect       allow
/tmp                 local           8309                             redirect       allow
/screen              local           8309                             redirect       allow
/guestFile           local           8309                             redirect       allow
/cgi-bin             local           8309                             redirect       allow
EOF
chmod -w /tmp/endpoints.conf
cp endpoints.conf endpoints.conf.old
cp /tmp/endpoints.conf endpoints.conf
