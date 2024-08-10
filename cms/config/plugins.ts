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
        transformEntry({ entry }) {
          return {
            ...entry,
            Tags: entry.Tags?.map((tag) => tag.id),
            Category: entry.Category?.id,
            Author: entry.Author?.id,
          };
        },
        settings: {
          filterableAttributes: ["Category", "Tags", "Author"],
        },
      },
      "project-page": {
        indexName: ["project-page", "content"],
        transformEntry({ entry }) {
          return {
            ...entry,
            Tags: entry.Tags?.map((tag) => tag.id),
            Category: entry.Category?.id,
          };
        },
        settings: {
          filterableAttributes: ["Category", "Tags"],
        },
      },
      "article-page": {
        indexName: ["article-page", "content"],
        transformEntry({ entry }) {
          return {
            ...entry,
            Tags: entry.Tags?.map((tag) => tag.id),
            Category: entry.Category?.id,
            Author: entry.Author?.id,
          };
        },
        settings: {
          filterableAttributes: ["Category", "Tags", "Author"],
        },
      },
    },
  },
});
