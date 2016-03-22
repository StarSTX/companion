# this starts mavproxy so that the serial link to the companion computer (on /dev/ttyACM0) 
# is available to a companion computer and external GCSs via UDP. This broadcasts so that
# multiple IP addresses can received the telemetry.

# For PixHawk or other connected via USB on Raspberry Pi 2
mavproxy.py --master /dev/ttyACM0 \
            --baud 115200 \
            --out udpin:localhost:9000 \
            --out udpbcast:169.254.255.255:14550

# For PixHawk or other connected via telem1 on Raspberry Pi 2
# mavproxy.py --master /dev/ttyAMA0 \
#             --baud 57600 \
#             --out udpin:localhost:9000 \
#             --out udpbcast:169.254.255.255:14550            