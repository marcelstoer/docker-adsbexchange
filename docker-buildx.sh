#!/bin/sh
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t marcelstoer/adsbexchange-feed --push adsbexchange-feed
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t marcelstoer/adsbexchange-mlat --push adsbexchange-mlat
