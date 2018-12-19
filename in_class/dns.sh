#!/bin/bash
NET=10.151.71
for n in $(seq 1 254); do
  ADDR=${NET}.${n}
  echo -e "${ADDR}\t$(dig -x ${ADDR} +short)"
done
