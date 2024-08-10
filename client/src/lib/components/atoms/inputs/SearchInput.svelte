<script lang="ts">
  import { Input } from "$lib/components/ui/input";
  import Search from "lucide-svelte/icons/search";

  export let value: string;
  export let cssClass = "";
</script>

<div class={cssClass + " relative"}>
  <Search class="text-muted-foreground absolute left-2.5 top-2.5 h-4 w-4" />
  <Input
    on:keydown={(e) => {
      if (e.key === "Enter") {
        value = e.target.value;
      }
    }}
    type="search"
    placeholder="Search..."
    class="bg-background focus-visible:ring-primary w-full rounded-lg pl-8"
  />

</div>
