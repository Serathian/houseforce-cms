<script>
  import { getImgUrlString } from "@/utils/mediaHelpers";

  export let hit;
</script>

{#if hit.id}
  <div class="flex">
    <img
      src={getImgUrlString(hit.MainImage.url)}
      alt={hit.MainImage.alternativeText}
      class="h-32"
    />
    <h2>{hit.Title}</h2>
  </div>
{/if}
