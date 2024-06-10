<script lang="ts">
	import { getDisplayOption, getImageStyle } from '@/utils/styleHelper';
	import RichTextBlock from '../blocks/RichTextBlock.svelte';
	import StrapiImageBlock from '../blocks/StrapiImageBlock.svelte';

	// TODO: type this
	//item.Media.data is an array?
	export let data;
</script>

<div class="grid grid-cols-12 gap-6">
	{#each data as item}
		{#if item.__component === 'blocks.text-block'}
			<RichTextBlock data={item.Text} cssClass={getDisplayOption(item.DisplayOption)} />
		{:else if item.__component === 'blocks.image-block'}
			<StrapiImageBlock
				imageData={item.Media.data[0]}
				cssClass={getDisplayOption(item.DisplayOption) + ' ' + getImageStyle(item.Style)}
			/>
		{/if}
	{/each}
</div>
