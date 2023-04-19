# microservices-traefik-template


## Traefik

Issues Notes:

- In Traefik v2.9, the PathPrefix is not working, so we need to add this line to resolve problem:

    ```
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.catalog.rule=Host(`api.example.com`) && Path(`/catalog`)"
      - "traefik.http.services.catalog.loadbalancer.server.port=3001"
      # Add these 2 lines
      - "traefik.http.middlewares.catalog-stripprefix.stripprefix.prefixes=/catalog"
      - "traefik.http.routers.catalog.middlewares=catalog-stripprefix@docker"
    ```
    
 ## Testing
