<script lang="ts">
	import CardGrid from '@/components/collection/cardGrid.svelte';
	import type { APIResponse, APIResponseCollection } from '@/types/strapi';
	import { Domain, type CardData } from '@/types/types.js';
	import { updateCurrentTheme } from '@/utils/domainHelper';

	// Props
	export let data: {
		pageData: APIResponse<'api::project.project'>;
		collectionData: APIResponseCollection<'api::project-page.project-page'>;
	};

	// Data
	let pageData = data.pageData.data;
	let collection = data.collectionData.data;
	let cardData = collection.map(
		(x) =>
			<CardData>{
				attributes: {
					Title: x.attributes.Title,
					Description: 'work in progress',
					ImageUrl: 'WIP',
					createdAt: x.attributes.createdAt
				},
				id: x.id
			}
	);
	updateCurrentTheme(Domain.Projects, pageData.attributes.Title);
</script>

<h1>Projects listed here</h1>
<CardGrid collection={cardData} />
