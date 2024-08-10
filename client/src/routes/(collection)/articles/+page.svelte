<script lang="ts">
  import CardGrid from "@/components/collection/CardGrid.svelte";
  import type { APIResponse } from "@/types/strapi";
  import { Pages, type NumericKeyedObject } from "@/types/types.js";
  import { updateCurrentTheme } from "@/utils/domainHelper";
  import ContentArea from "@/components/content-area/ContentArea.svelte";
  import {
    Search,
    type MeilisearchResult,
    type SearchResult,
  } from "@/api/searchApi";
  import { facets } from "@/stores/facetStore";
  import { writable } from "svelte/store";
  import { onMount } from "svelte";
  import ArticleCard from "@/components/collection/ArticleCard.svelte";
  import CollectionSearch from "@/components/collection/CollectionSearch.svelte";

  // Props
  export let data: {
    pageData: APIResponse<"api::article.article">;
    collectionData: MeilisearchResult<SearchResult>;
  };

  // Data
  const pageData = data.pageData?.data;
  const contentArea = pageData.attributes?.ContentArea;
  $: collection = data.collectionData?.hits;
  const tags: NumericKeyedObject = data.collectionData.facetDistribution.Tags;
  const categories: NumericKeyedObject =
    data.collectionData.facetDistribution.Category;

  const searchStore = writable<{
    q: string;
    tags: number[];
    category: number;
  }>({ q: "", tags: [], category: -1 });

  let isMounted = false;

  onMount(() => {
    isMounted = true;
  });

  searchStore.subscribe(async (value) => {
    if (isMounted) {
      const result = await Search(
        Pages.Articles,
        fetch,
        value.q,
        value.category,
        value.tags,
      );
      collection = result.hits;
    }
  });

  updateCurrentTheme(Pages.Blogs);
</script>

<div class="grid grid-cols-5 gap-y-8">
  <ContentArea data={contentArea} cssClass="col-span-5" />
  <CollectionSearch {searchStore} {categories} {tags} {facets} />
  <CardGrid {collection} component={ArticleCard} cssClass="col-span-5" />
</div>
