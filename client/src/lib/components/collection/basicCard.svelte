<script lang="ts">
	import type { CardData } from '@/types/types';

	export let cardData: CardData;
</script>

<div class="bg-muted shadow-xl">
	<h1>{cardData.attributes.Title}</h1>
	<p>{cardData.attributes.Description}</p>
</div>
