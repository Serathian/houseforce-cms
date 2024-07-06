<script lang="ts">
  import ContentArea from "@/components/content-area/ContentArea.svelte";
  import { Pages } from "@/types/types.js";
  import { updateCurrentTheme } from "@/utils/domainHelper";

  // Props
  export let data;

  // Page Data
  let pageData = data.data;
  let contentArea = pageData.attributes.ContentArea;
  updateCurrentTheme(Pages.AboutUs);
</script>

<ContentArea data={contentArea} />
