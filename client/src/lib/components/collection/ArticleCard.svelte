<script lang="ts">
  import { getImgUrlString } from "@/utils/mediaHelpers";
  import type { Data, ImageMediaData } from "@/types/types";
  import {
    getDisplayOption,
    RadiusOption,
    SizeOption,
  } from "@/utils/styleHelper";
  import Category from "../atoms/facets/Category.svelte";
  import Tag from "../atoms/facets/Tag.svelte";
  import type { SearchResult } from "@/api/searchApi";
  import AuthorSmall from "../blocks/AuthorSmall.svelte";

  export let cardData: SearchResult;
  const slugUrl = `/articles/${cardData.id}`;

  $: imageData = cardData.MainImage as unknown as Data<ImageMediaData>;

  // TODO: type this out
  $: tags = cardData.Tags;
  $: category = cardData.Category;
</script>

<div
  class={getDisplayOption({
    BlockSize: SizeOption.OneThird,
    Border: false,
    BorderRadius: RadiusOption.None,
  }) +
    " rounded-b-xl h-full relative shadow-sm hover:border-primary border-2 border-muted"}
>
  <a href={slugUrl} class="flex flex-col h-full">
    {#if imageData}
      <div class="relative">
        <img
          src={getImgUrlString(imageData.url)}
          alt={imageData.alternativeText}
          class="w-full aspect-video object-center"
        />
        <div class="absolute bottom-0 left-0 flex flex-col w-full">
          <h1 class="text-lg font-bold text-muted bg-black bg-opacity-50 p-3">
            {cardData.Title}
          </h1>
          <Category categoryId={category} cssClass=" z-10 px-3 py-1" />
        </div>
      </div>
    {/if}
    <div class="flex flex-col gap-2 py-2 px-3 h-full justify-between">
      <p>{cardData.Introduction}</p>
      <AuthorSmall authorId={cardData.Author} cssClass="" />
      <div class="flex gap-2 border-t py-2 justify-center">
        {#each tags as tag}
          <Tag tagId={tag} />
        {/each}
      </div>
    </div>
  </a>
</div>
