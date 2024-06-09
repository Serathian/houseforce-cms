<script lang="ts">
	import RichTextBlock from '../blocks/richTextBlock.svelte';
	import StrapiImageBlock from '../blocks/strapiImageBlock.svelte';

	export let data;
	console.log(data);
</script>

<div class="grid gap-6">
	{#each data as item}
		{#if item.__component === 'blocks.text-block'}
			<RichTextBlock data={item.Text} />
		{:else if item.__component === 'blocks.image-block'}
			<StrapiImageBlock data={item.Media} />
		{/if}
	{/each}
</div>
