#!/bin/bash
docker run -e "LISTEN=8989" -e "PROXY=echo.jpillora.com:80" -p 8989:8989 3f0360a583de