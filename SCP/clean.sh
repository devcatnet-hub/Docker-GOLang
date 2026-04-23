#!/bin/sh

### Universal
    # Paquetes temporales
    rm -rf /var/cache/apk/* /var/cache/apt/* /var/lib/apt/lists/* /tmp/* /var/tmp/*
    # Cache de paquetes
    rm -rf ~/.cache /root/.cache

### Specific
    rm -rf /usr/local/go/pkg/bootstrap
    rm -rf /usr/local/go/pkg/obj
    rm -rf /usr/local/go/pkg/*/cmd
    rm -rf /usr/local/go/pkg/tool/*/api
    rm -rf /usr/local/go/pkg/tool/*/go_bootstrap
    rm -rf /usr/local/go/src/cmd/dist/dist

    go clean -modcache && \
    rm -rf $(go env GOCACHE) && \
    rm -rf /go/pkg/mod/cache/*

    rm -rf \
    /usr/share/doc/* \
    /usr/share/man/* \
    /usr/share/info/*

    rm -rf /var/log/*

    