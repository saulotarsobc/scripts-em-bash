#! bash
snmp_output=$(snmpbulkwalk -v2c -OnQ -c public 10.0.0.1 1.3.6.1.2.1.2.2.1.8);
json_data=$(echo "$snmp_output" | awk '!/^SNMPv2-MIB/ { split($0, arr, " = "); printf("\"%s\": \"%s\",\n", arr[1], arr[2]) }' | sed '$s/,$//')
echo "{$json_data}"