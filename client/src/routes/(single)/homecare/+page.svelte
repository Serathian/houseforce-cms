<script lang="ts">
  import ContentArea from "@/components/content-area/ContentArea.svelte";
  import type { APIResponse } from "@/types/strapi";
  import { Pages } from "@/types/types.js";
  import { updateCurrentTheme } from "@/utils/domainHelper";

  // Props
  export let data: APIResponse<"api::homecare.homecare">;

  // Page Data
  let pageData = data.data;
  let contentArea = pageData.attributes.ContentArea;

  updateCurrentTheme(Pages.Homecare);
</script>

<ContentArea data={contentArea} />
