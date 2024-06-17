<script lang="ts">
  import SearchCard from "@/components/search/SearchCard.svelte";
  import Search from "lucide-svelte/icons/search";
  import Input from "@/components/ui/input/input.svelte";
  import { Search as SearchApi } from "@/api/searchApi.js";
  export let data;
</script>

<div class="flex flex-col gap-3">
  <div class="relative">
    <Search class="text-muted-foreground absolute left-2.5 top-2.5 h-4 w-4" />
    <Input
      on:input={async (e) => {
        const input = e.currentTarget;
        const query = input.value;
        const response = await SearchApi(query);
        data = response;
      }}
      type="search"
      placeholder="Looking for something?"
      class="bg-background focus-visible:ring-primary w-full rounded-lg pl-8"
    />
  </div>
  {#each data.hits as hit}
    <SearchCard {hit} />
  {/each}
</div>
