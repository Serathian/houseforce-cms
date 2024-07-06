<script lang="ts">
  import CardGrid from "@/components/collection/CardGrid.svelte";
  import ProjectCard from "@/components/collection/ProjectCard.svelte";
  import type { APIResponse, APIResponseCollection } from "@/types/strapi";
  import { Pages } from "@/types/types.js";
  import { updateCurrentTheme } from "@/utils/domainHelper";

  // Props
  export let data: {
    pageData: APIResponse<"api::project.project">;
    collectionData: APIResponseCollection<"api::project-page.project-page">;
  };

  // Data
  let pageData = data.pageData.data;
  let collection = data.collectionData.data;

  updateCurrentTheme(Pages.Projects);
</script>

<h1>Projects listed here</h1>
<CardGrid {collection} component={ProjectCard} />
