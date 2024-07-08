<script lang="ts">
  import CardGrid from "@/components/collection/CardGrid.svelte";
  import BlogCard from "@/components/collection/BlogCard.svelte";
  import type { APIResponse, APIResponseCollection } from "@/types/strapi";
  import { Pages, type NumericKeyedObject } from "@/types/types.js";
  import { updateCurrentTheme } from "@/utils/domainHelper";
  import ContentArea from "@/components/content-area/ContentArea.svelte";
  import Combobox from "@/components/atoms/inputs/Combobox.svelte";
  import SearchInput from "@/components/atoms/inputs/SearchInput.svelte";
  import type { MeilisearchResult, SearchResult } from "@/api/searchApi";
  import { tagsToFacets } from "@/utils";
  import { facets, type Category, type Tag } from "@/stores/facetStore";

  // Props
  export let data: {
    pageData: APIResponse<"api::blog.blog">;
    collectionData: MeilisearchResult<SearchResult>;
  };

  // Data
  const pageData = data.pageData?.data;
  const contentArea = pageData.attributes?.ContentArea;
  const collection = data.collectionData?.hits;
  const tags: NumericKeyedObject = data.collectionData.facetDistribution.Tags;
  const categories: NumericKeyedObject =
    data.collectionData.facetDistribution.Category;

  console.log(categories);
  console.log($facets.Tags);
  updateCurrentTheme(Pages.Blogs);
</script>

<div class="grid grid-cols-5 gap-y-8">
  <ContentArea data={contentArea} cssClass="col-span-5" />
  <div Class="flex gap-3 col-start-2 col-span-3">
    <SearchInput cssClass="w-full" />
    <Combobox
      placeholder="Filter by tags"
      facets={tagsToFacets(tags, $facets.Tags)}
    />
    <Combobox
      placeholder="Filter by categories"
      facets={tagsToFacets(categories, $facets.Categories)}
    />
  </div>

  <CardGrid {collection} component={BlogCard} cssClass="col-span-5" />
</div>
