<script lang="ts">
	import type { CardData } from '@/types/types';
	import BasicCard from './basicCard.svelte';

	export let collection: CardData[];
</script>

{#if collection.length}
	<div class="grid gap-3">
		{#each collection as cardData}
			<BasicCard {cardData} />
		{/each}
	</div>
{:else}
	<div>nothing to show here</div>
{/if}
