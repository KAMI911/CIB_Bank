#!/bin/bash

JNLP_FILE="https://ibank.cib.hu/CIB_Internet_Bank.jnlp"
JAVAWS_CMD="$(which javaws)"

if ! [[ -f ${JAVAWS_CMD} && -x ${JAVAWS_CMD} ]]
then
  echo "Nem található javaws futtató környezet."
  exit 1
fi

${JAVAWS_CMD} "${JNLP_FILE}"

