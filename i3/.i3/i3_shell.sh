#!/bin/bash
WHEREAMI=$(cat /tmp/whereiam)
rxvt-unicode -e cd "$WHEREAMI"
