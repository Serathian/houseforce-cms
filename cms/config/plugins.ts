export default ({ env }) => ({
  meilisearch: {
    config: {
      host: env("MEILI_HOST", "http://localhost:7700"),
      apiKey: env(
        "MEILI_MASTER_KEY",
        "CSoHrJ1ALmEa1U3fZ6TmgHb3CXqhcAeAfZHXLsqquHQ",
      ),
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
