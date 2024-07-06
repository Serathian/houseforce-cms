<script lang="ts" generics="T">
  import type { ComponentType } from "svelte";
  export let component: ComponentType;
  export let collection: T[];
  export let cssClass = "";
</script>

{#if collection.length}
  <div class={cssClass + " grid grid-cols-12 gap-x-3 gap-y-6"}>
    {#each collection as cardData}
      <svelte:component this={component} {cardData} />
    {/each}
  </div>
{:else}
  <div>nothing to show here</div>
{/if}
