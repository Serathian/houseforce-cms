<script lang="ts">
  import type { ApiBlogPageBlogPage } from "@/types/contentTypes";
  import { getImgAlt, getImgUrl } from "@/utils/mediaHelpers";
  import type { Data, ImageMediaData } from "@/types/types";
  import {
    getBackgroundColour,
    getDisplayOption,
    RadiusOption,
    SizeOption,
  } from "@/utils/styleHelper";
  import Category from "../atoms/facets/Category.svelte";
  import Tag from "../atoms/facets/Tag.svelte";

  export let cardData: ApiBlogPageBlogPage;
  const imageData = cardData.attributes
    .MainImage as unknown as Data<ImageMediaData>;
  // TODO: type this out
  const tags = cardData.attributes.Tags.data;
  const category = cardData.attributes.Category.data;
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
    data={category}
    cssClass="absolute top-0 right-0 z-10 rounded-bl-sm px-3 py-1"
  />
  <a href="/">
    {#if imageData.data}
      <div class="relative">
        <img
          src={getImgUrl(imageData.data)}
          alt={getImgAlt(imageData.data)}
          class="w-full aspect-video object-cover"
        />
        <div class="absolute bottom-0 pb-1 pl-3 flex gap-2">
          {#each tags as tag}
            <Tag data={tag} />
          {/each}
        </div>
      </div>
    {/if}
    <div class="flex flex-col gap-2 py-2 px-3 w-full">
      <h1 class="text-lg font-bold">{cardData.attributes.Title}</h1>
      <p>{cardData.attributes.Introduction}</p>
    </div>
  </a>
</div>
