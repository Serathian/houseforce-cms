<script lang="ts">
  import type { ApiBlogPageBlogPage } from "@/types/contentTypes";
  import { getImgAlt, getImgUrl, getImgUrlString } from "@/utils/mediaHelpers";
  import type { Data, ImageMediaData } from "@/types/types";
  import {
    getDisplayOption,
    RadiusOption,
    SizeOption,
  } from "@/utils/styleHelper";
  import Category from "../atoms/facets/Category.svelte";
  import Tag from "../atoms/facets/Tag.svelte";
  import type { SearchResult } from "@/api/searchApi";

  export let cardData: SearchResult;
  const imageData = cardData.MainImage as unknown as Data<ImageMediaData>;

  // TODO: type this out
  const tags = cardData.Tags;
  const category = cardData.Category;
</script>

<div
  class={getDisplayOption({
    BlockSize: SizeOption.OneThird,
    Border: false,
    BorderRadius: RadiusOption.None,
  }) +
    " rounded-b-xl h-full relative shadow-sm hover:border-primary border-2 border-muted"}
>
  <Category
    categoryId={category}
    cssClass="absolute top-0 right-0 z-10 rounded-bl-sm px-3 py-1"
  />
  <a href="/">
    {#if imageData}
      <div class="relative">
        <img
          src={getImgUrlString(imageData.url)}
          alt={imageData.alternativeText}
          class="w-full aspect-video object-cover"
        />
        <div class="absolute bottom-0 pb-1 pl-3 flex gap-2">
          {#each tags as tag}
            <Tag tagId={tag} />
          {/each}
        </div>
      </div>
    {/if}
    <div class="flex flex-col gap-2 py-2 px-3 w-full">
      <h1 class="text-lg font-bold">{cardData.Title}</h1>
      <p>{cardData.Introduction}</p>
    </div>
  </a>
</div>
