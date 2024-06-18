# HouseForce.biz - Headless CMS and Client

## Local development

`docker-compose -f docker.compose.dev.yml up --build`

## Headless CMS - Strapi.io

- type import to frontend: https://strapi.io/blog/improve-your-frontend-experience-with-strapi-types-and-type-script

### Search Engine

- Search Index: https://www.meilisearch.com/docs/reference/api/overview
- Index JS integration: https://github.com/meilisearch/meilisearch-js-plugins/tree/main/packages/instant-meilisearch#-example-with-instantsearch

## Client - Svelte-kit

- general info for Svelte: https://kit.svelte.dev/
- svelte tutorial: https://learn.svelte.dev/
- icons: https://lucide.dev/icons/
- used in the richTextBlock: https://github.com/tailwindlabs/tailwindcss-typography
- ui framework in use: https://www.shadcn-svelte.com/
- populating dynamic content areas: https://docs.strapi.io/dev-docs/api/rest/populate-select
- Environment Variables: https://kit.svelte.dev/docs/adapter-node#environment-variables

### Theming

- colour pallet: https://coolors.co/ecc8af-99d2e8-c56bcf-c18c5d-495867

## Testing production

`docker-compose -p houseforce_production up`
