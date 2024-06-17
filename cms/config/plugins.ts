import { ArticlePage } from "../types/schemas-to-ts/api/article-page";
import { BlogPage } from "../types/schemas-to-ts/api/blog-page";
import { ProjectPage } from "../types/schemas-to-ts/api/project-page";

export default () => ({
  "schemas-to-ts": {
    enabled: true,
    config: {
      acceptedNodeEnvs: ["development"],
      commonInterfacesFolderName: "schemas-to-ts",
      alwaysAddEnumSuffix: false,
      alwaysAddComponentSuffix: false,
      usePrettierIfAvailable: false,
      logLevel: 2,
      destinationFolder: "./types/schemas-to-ts",
    },
  },
  meilisearch: {
    config: {
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
