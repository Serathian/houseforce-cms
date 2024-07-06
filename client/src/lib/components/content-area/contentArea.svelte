<script lang="ts">
  import RichTextBlock from "../blocks/RichTextBlock.svelte";
  import ImageBlock from "../blocks/ImageBlock.svelte";
  import SeperatorBlock from "../blocks/SeperatorBlock.svelte";
  import HeaderBlock from "../blocks/HeaderBlock.svelte";
  import TabsBlock from "../blocks/TabsBlock.svelte";

  // TODO: type this
  //item.Media.data is an array?
  export let data;
  export let cssClass = "";
  console.log(data);
</script>

<div class={cssClass + " grid grid-cols-12 gap-6"}>
  {#each data as block}
    {#if block.__component === "blocks.text-block"}
      <RichTextBlock {block} />
    {:else if block.__component === "blocks.image-block"}
      <ImageBlock {block} />
    {:else if block.__component === "blocks.separator-block"}
      <SeperatorBlock {block} />
    {:else if block.__component === "blocks.header-block"}
      <HeaderBlock {block} />
    {:else if block.__component === "blocks.tab-block"}
      <TabsBlock {block} />
    {/if}
  {/each}
</div>
