<script lang="ts">
  import { facets, type Tag } from "@/stores/facetStore";

  export let tagId;

  let tag: Tag;

  facets.subscribe((value) => {
    tag = value.Tags.find((t) => t.id === tagId) ?? {
      id: -1,
      name: "not-found",
    };
  });
</script>

<span class="bg-muted rounded-full px-3 shadow-md font-bold">
  {tag.name}
</span>
