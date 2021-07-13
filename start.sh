#!/usr/bin/env bash
if [[ $POSTGRES_USER && $POSTGRES_PASSWORD && $POSTGRES_HOST ]]; then
   export DATABASE_URL="postgresql://$POSTGRES_USER:$POSTGRES_PASSWORD@$POSTGRES_HOST"
fi
echo "using database url: $DATABASE_URL"
./node_modules/.bin/node-pg-migrate up
nodemon server
exec "$@"
