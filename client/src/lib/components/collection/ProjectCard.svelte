<script lang="ts">
  import type { ApiProjectPageProjectPage } from "@/types/contentTypes";
  import type { Data, ImageMediaData } from "@/types/types";
  import { getImgAlt, getImgUrl } from "@/utils/mediaHelpers";
  import { DisplayOption, getDisplayOption } from "@/utils/styleHelper";

  export let cardData: ApiProjectPageProjectPage;
  const imageData = cardData.attributes
    .MainImage as unknown as Data<ImageMediaData>;
</script>

<div class={getDisplayOption(DisplayOption.OneThird) + " h-full"}>
  <img
    src={getImgUrl(imageData.data)}
    alt={getImgAlt(imageData.data)}
    class="w-full"
  />
  <div class="">
    <h1 class="text-lg font-bold">{cardData.attributes.Title}</h1>
    <p>{cardData.attributes.Introduction}</p>
  </div>
</div>
