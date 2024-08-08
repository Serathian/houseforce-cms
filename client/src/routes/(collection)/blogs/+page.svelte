<script lang="ts">
  import CardGrid from "@/components/collection/CardGrid.svelte";
  import BlogCard from "@/components/collection/BlogCard.svelte";
  import type { APIResponse, APIResponseCollection } from "@/types/strapi";
  import { Pages, type NumericKeyedObject } from "@/types/types.js";
  import { updateCurrentTheme } from "@/utils/domainHelper";
  import ContentArea from "@/components/content-area/ContentArea.svelte";
  import Combobox from "@/components/atoms/inputs/Combobox.svelte";
  import SearchInput from "@/components/atoms/inputs/SearchInput.svelte";
  import { Search, type MeilisearchResult, type SearchResult } from "@/api/searchApi";
  import { tagsToFacets } from "@/utils";
  import { facets, type Category, type Tag } from "@/stores/facetStore";
  import { writable } from 'svelte/store';
  import { onMount } from "svelte";

  // Props
  export let data: {
    pageData: APIResponse<"api::blog.blog">;
    collectionData: MeilisearchResult<SearchResult>;
  };

  // Data
  const pageData = data.pageData?.data;
  const contentArea = pageData.attributes?.ContentArea;
  let collection = data.collectionData?.hits;
  const tags: NumericKeyedObject = data.collectionData.facetDistribution.Tags;
  const categories: NumericKeyedObject = data.collectionData.facetDistribution.Category;


  const searchStore = writable<{ q: string, tags: number[], categories: number[] }>({ q: "", tags: [], categories: [] });

  let isMounted = false;

  onMount(() => {
    isMounted = true;
  });

  searchStore.subscribe(async (value) => {
    if (isMounted) { 
      const result = await Search(Pages.Blogs, fetch, value.q, value.tags, value.categories);
      console.log(result);
      collection = result.hits;
    }
  });

  updateCurrentTheme(Pages.Blogs);
</script>

<div class="grid grid-cols-5 gap-y-8">
  <ContentArea data={contentArea} cssClass="col-span-5" />
  <div Class="flex flex-col md:flex-row gap-3 col-start-2 col-span-3">
    <SearchInput cssClass="w-full" bind:value={$searchStore.q} />
    <div class="flex">
        <Combobox
        placeholder="Filter by tags"
        facets={tagsToFacets(tags, $facets.Tags)}
      />
      <Combobox
        placeholder="Filter by categories"
        facets={tagsToFacets(categories, $facets.Categories)}
      />
    </div>

  </div>

  <CardGrid {collection} component={BlogCard} cssClass="col-span-5" />
</div>
