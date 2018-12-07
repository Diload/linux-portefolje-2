# linux-portefolje-2

## rng.sh
Script serving 16 random numbers, almost like the example given in the presentation but changed /dev/random to /dev/urandom since /dev/random will block when it doesn't have enough entropy and the container didn't generate enough though the script blocked execution.

## socatstart
init.d rc script that runs a socat service serving the rng.sh script on port 8080 in container C1

## index.php
Web page that fetches and displays the output from container C1 on port 8080. Runs on a lighthttpd server on container C2 and is exactly the same as given in the presentation

## iptables_rules
Script to create the DNAT rule that routes port 80 from container C2 to port 80 on the USB ethernet gadget interface.

## start_containers
Script that starts the two containers C1 and C2.
