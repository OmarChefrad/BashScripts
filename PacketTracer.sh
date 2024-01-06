enable
configure terminal

class-map match-any UDP-TRAFFIC
 match protocol udp

policy-map QOS-POLICY
 class UDP-TRAFFIC
  priority percent 20
 class class-default
  fair-queue

interface <interface_name>
 service-policy input QOS-POLICY

end
