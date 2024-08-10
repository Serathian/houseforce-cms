<script lang="ts">
  import AuthorLarge from "@/components/blocks/AuthorLarge.svelte";
  import ContentArea from "@/components/content-area/ContentArea.svelte";
  import type { APIResponseData } from "@/types/strapi";
  import { Pages, type Data } from "@/types/types";
  import { updateCurrentTheme } from "@/utils/domainHelper";

  export let data: Data<APIResponseData<"api::article-page.article-page">>;
  updateCurrentTheme(Pages.Articles);
</script>

<h1 class="text-5xl">{data.data.attributes?.Title}</h1>
<ContentArea data={data.data.attributes.ContentArea} />
<AuthorLarge />
