<script lang="ts">
  import { getDisplayOption } from "@/utils/styleHelper";

  export let block: any;
  const cssClass = getDisplayOption(block.DisplayOption);
</script>

<h2 class={cssClass + " text-center text-4xl"}>{block.Text}</h2>
