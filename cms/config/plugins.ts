export default ({ env }) => ({
  meilisearch: {
    config: {
      host: env("MEILI_HOST", "default_meilisearch_host"),
      apiKey: env("MEILI_MASTER_KEY", "default_meilisearch_master_key"),
      "blog-page": {
        indexName: ["blog-page", "content"],
      },
      "project-page": {
        indexName: ["project-page", "content"],
      },
      "article-page": {
        indexName: ["article-page", "content"],
      },
    },
  },
});
