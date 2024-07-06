<script lang="ts">
  import { getDisplayOption } from "@/utils/styleHelper";

  export let block: any;
  const cssClass = getDisplayOption(block.DisplayOption);
</script>

<div class={cssClass + "border-b border-1 border-muted-foreground m-6"}></div>
