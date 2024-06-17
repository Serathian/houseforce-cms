<script lang="ts">
  import { Pages } from "@/types/types.js";
  import { updateCurrentTheme } from "@/utils/domainHelper";

  // Props
  export let data;

  // Page Data
  let pageData = data.data;

  updateCurrentTheme(Pages.AboutUs);
</script>

<h1>About Us Page</h1>
