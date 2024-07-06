<script lang="ts">
  import { getImgAlt, getImgUrl } from "@/utils/mediaHelpers";
  import { getDisplayOption } from "@/utils/styleHelper";

  export let block: any;
  console.log(block);

  const baseCss = getDisplayOption(block.DisplayOption);
  const imageData = block.Media.data[0];
</script>

<img
  class={baseCss + "my-auto w-80 shadow-lg mx-auto"}
  src={getImgUrl(imageData)}
  alt={getImgAlt(imageData)}
/>
