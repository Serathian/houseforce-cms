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

  export let cardData: SearchResult;
  const slugUrl = `/projects/${cardData.id}`;
  $: imageData = cardData.MainImage as unknown as Data<ImageMediaData>;

  // TODO: type this out
  $: tags = cardData.Tags;
  $: category = cardData.Category;
</script>

<div
  class={getDisplayOption({
    BlockSize: SizeOption.Half,
    Border: false,
    BorderRadius: RadiusOption.None,
  }) + " h-full relative shadow-sm hover:border-primary border-2 border-muted"}
>
  <a href={slugUrl} class="flex flex-col">
    <Category categoryId={category} cssClass="px-3 py-1 w-full" />
    <div class="absolute to-0 right-0 p-1 flex gap-2">
      {#each tags as tag}
        <Tag tagId={tag} />
      {/each}
    </div>
    <div class="flex w-full">
      {#if imageData}
        <div class="relative w-full p-3 max-w-1/2">
          <img
            src={getImgUrlString(imageData.url)}
            alt={imageData.alternativeText}
            class="max-w-1/2 object-fill"
          />
        </div>
      {/if}
      <div class="flex flex-col gap-2 py-2 px-3 self-center">
        <h1 class="text-lg font-bold">{cardData.Title}</h1>
        <p class="italic">{cardData.Introduction.slice(0, 200)}...</p>
      </div>
    </div>
    <div class="pb-3 px-3">
      <h3 class="border-b font-semibold">Project Details</h3>
      <div class="flex gap-5 px-3 pt-1">
        <div class="flex flex-col">
          <span class="text-xs text-muted-foreground">Start:</span>
          <span class="text-primary font-bold">8-2021</span>
        </div>
        <div class="flex flex-col">
          <span class="text-xs text-muted-foreground">Completion:</span>
          <span class="text-primary font-bold">9-2022</span>
        </div>
        <div class="flex flex-col">
          <span class="text-xs text-muted-foreground">Total Duration:</span>
          <span class="text-primary font-bold">13 months</span>
        </div>
        <div class="flex flex-col">
          <span class="text-xs text-muted-foreground">Estimated Total:</span>
          <span class="text-primary font-bold">68,000.-</span>
        </div>
      </div>
    </div>
  </a>
</div>
