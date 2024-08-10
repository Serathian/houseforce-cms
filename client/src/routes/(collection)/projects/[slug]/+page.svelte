<script lang="ts">
  import type { APIResponseData } from "@/types/strapi";
  import { Pages, type Data } from "@/types/types";
  import { updateCurrentTheme } from "@/utils/domainHelper";

  // TODO: Type this
  export let data: Data<APIResponseData<"api::blog-page.blog-page">>;

  updateCurrentTheme(Pages.Blogs);
</script>

<h1>{data.data.attributes?.Title}</h1>
