<script lang="ts">
	import { getDisplayOption, getImageStyle } from '@/utils/styleHelper';
	import RichTextBlock from '../blocks/richTextBlock.svelte';
	import StrapiImageBlock from '../blocks/strapiImageBlock.svelte';

	export let data;
</script>

<div class="grid gap-6 grid-cols-12">
	{#each data as item}
		{#if item.__component === 'blocks.text-block'}
			<RichTextBlock data={item.Text} cssClass={getDisplayOption(item.DisplayOption)} />
		{:else if item.__component === 'blocks.image-block'}
			<StrapiImageBlock data={item.Media} cssClass={getDisplayOption(item.DisplayOption) + " " + getImageStyle(item.Style)} />
		{/if}
	{/each}
</div>
