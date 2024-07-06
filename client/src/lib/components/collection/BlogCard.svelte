<script lang="ts">
  import type { ApiBlogPageBlogPage } from "@/types/contentTypes";
  import { getImgAlt, getImgUrl } from "@/utils/mediaHelpers";
  import type { Data, ImageMediaData } from "@/types/types";
  import {
    getDisplayOption,
    RadiusOption,
    SizeOption,
  } from "@/utils/styleHelper";

  export let cardData: ApiBlogPageBlogPage;
  const imageData = cardData.attributes
    .MainImage as unknown as Data<ImageMediaData>;
</script>

<a
  href="/"
  class={getDisplayOption({
    BlockSize: SizeOption.OneThird,
    Border: false,
    BorderRadius: RadiusOption.None,
  }) + " relative z-0"}
>
  <img
    src={getImgUrl(imageData.data)}
    alt={getImgAlt(imageData.data)}
    class="w-full p-1"
  />
  <div class="absolute bottom-0 py-2 px-1 bg-white w-full">
    <h1 class="text-lg font-bold">{cardData.attributes.Title}</h1>
    <p>{cardData.attributes.Introduction}</p>
  </div>
</a>
