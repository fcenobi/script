
get-netfirewallrule | Get-NetFirewallPortFilter | select-object Protocol, LocalPort, RemotePort, InstanceID, CreationClassName | export-csv .\FIREWALLRULE.csv
