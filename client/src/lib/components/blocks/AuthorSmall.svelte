<script lang="ts">
  import { authors, type Author } from "@/stores/authorStore";
  import { getImgUrlString } from "@/utils/mediaHelpers";
  export let authorId;
  export let cssClass: string;

  let loadedAuthors: Author[];

  $: author = loadedAuthors.find((c) => c.id === authorId);

  authors.subscribe((value) => {
    loadedAuthors = value.Authors;
  });
</script>

{#if author}
  <div class="flex flex-col gap-2">
    <span class="text-xs text-muted-foreground">Author:</span>
    <div class="flex items-center gap-3">
      <img
        src={getImgUrlString(author.image.attributes.url)}
        alt={author.image.attributes.alternativeText}
        class="max-w-16 rounded-full aspect-square object-center"
      />
      <span class="text-primary font-bold">{author.name}</span>
    </div>
  </div>
{/if}
