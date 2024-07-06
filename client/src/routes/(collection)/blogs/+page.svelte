<script lang="ts">
  import CardGrid from "@/components/collection/CardGrid.svelte";
  import BlogCard from "@/components/collection/BlogCard.svelte";

  import type { APIResponse, APIResponseCollection } from "@/types/strapi";
  import { Pages, type CardData } from "@/types/types.js";
  import { updateCurrentTheme } from "@/utils/domainHelper";
  import type { Attribute } from "@strapi/strapi";
  import ContentArea from "@/components/content-area/ContentArea.svelte";
  import SearchInput from "@/components/atoms/inputs/SearchInput.svelte";

  // Props
  export let data: {
    pageData: APIResponse<"api::blog.blog">;
    collectionData: APIResponseCollection<"api::blog-page.blog-page">;
  };

  // Data
  let pageData = data.pageData.data;
  let contentArea = pageData.attributes.ContentArea;
  let collection = data.collectionData.data;

  updateCurrentTheme(Pages.Blogs);
</script>

<div class="grid grid-cols-5 gap-y-3">
  <ContentArea data={contentArea} cssClass="col-span-5" />
  <div Class="col-start-2 col-span-3">
    <SearchInput />
  </div>

  <CardGrid {collection} component={BlogCard} cssClass="col-span-5" />
</div>
