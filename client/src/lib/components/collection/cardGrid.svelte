<script lang="ts" generics="T">
	import type { ComponentType } from 'svelte';
	export let component: ComponentType;
	export let collection: T[];
</script>

{#if collection.length}
	<div class="grid grid-cols-12 gap-3">
		{#each collection as cardData}
			<svelte:component this={component} {cardData} />
		{/each}
	</div>
{:else}
	<div>nothing to show here</div>
{/if}
