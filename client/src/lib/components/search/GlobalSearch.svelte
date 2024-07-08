<script lang="ts">
  import { Input } from "$lib/components/ui/input";
  import { goto } from "$app/navigation";
  import Search from "lucide-svelte/icons/search";

  export let cssClass = "";
</script>

<div class={cssClass + " relative"}>
  <Search class="text-muted-foreground absolute left-2.5 top-2.5 h-4 w-4" />
  <Input
    on:keydown={(e) => {
      if (e.key !== "Enter") return;
      const input = e.currentTarget;
      const query = input.value;
      goto(`/search?query=` + query, { replaceState: true });
    }}
    type="search"
    placeholder="Search..."
    class="bg-background focus-visible:ring-primary w-full rounded-lg pl-8"
  />
</div>
