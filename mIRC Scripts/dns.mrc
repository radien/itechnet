; Diffrent targes you can use
; dns: $dns(%n) - nick: $dns(%n).nick - address: $dns(%n).addr - ip: $dns(%n).ip 
on *:DNS:{
  var %n = $dns(0)
  echo -ati2l -  -[Found %n address(es)]-
  while (%n > 0) {
    echo -ati2l - $dns(%n) IP is: $dns(%n).ip Address: $dns(%n).addr 
    dec %n
  }
  echo -ati2l - End Of /dns
  halt
}