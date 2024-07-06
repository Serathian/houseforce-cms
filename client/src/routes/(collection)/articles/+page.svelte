<script lang="ts">
  import CardGrid from "@/components/collection/CardGrid.svelte";
  import ArticleCard from "@/components/collection/ArticleCard.svelte";

  import type { APIResponse, APIResponseCollection } from "@/types/strapi";
  import { Pages, type CardData } from "@/types/types.js";
  import { updateCurrentTheme } from "@/utils/domainHelper";
  import ContentArea from "@/components/content-area/ContentArea.svelte";

  // Props
  export let data: {
    pageData: APIResponse<"api::article.article">;
    collectionData: APIResponseCollection<"api::article-page.article-page">;
  };

  // Data
  let pageData = data.pageData.data;
  let contentArea = pageData.attributes.ContentArea;
  let collection = data.collectionData.data;

  updateCurrentTheme(Pages.Articles);
</script>

<ContentArea data={contentArea} />
<CardGrid {collection} component={ArticleCard} />
