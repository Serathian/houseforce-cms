<script>
  import { tagsToFacets } from "@/utils";
  import MultiCombobox from "../atoms/inputs/Combobox/MultiCombobox.svelte";
  import SingleCombobox from "../atoms/inputs/Combobox/SingleCombobox.svelte";
  import SearchInput from "../atoms/inputs/SearchInput.svelte";

  export let searchStore;
  export let facets;
  export let categories;
  export let tags;
</script>

<div
  Class="flex flex-col md:flex-row gap-3 col-span-12 lg:col-start-2 lg:col-span-3"
>
  <SearchInput cssClass="w-full" bind:value={$searchStore.q} />
  <div
    class="flex flex-col w-full items-center sm:flex-row gap-3 justify-center"
  >
    <MultiCombobox
      placeholder="Filter by tags"
      facets={tagsToFacets(tags, $facets.Tags)}
      bind:selectedValues={$searchStore.tags}
    />
    <SingleCombobox
      placeholder="Filter by category"
      facets={tagsToFacets(categories, $facets.Categories)}
      bind:selectedValue={$searchStore.category}
    />
  </div>
</div>
