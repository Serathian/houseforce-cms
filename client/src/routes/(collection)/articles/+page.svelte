<script lang="ts">
	import CardGrid from '@/components/collection/cardGrid.svelte';
	import type { APIResponse, APIResponseCollection } from '@/types/strapi';
	import { Domain, type CardData } from '@/types/types.js';
	import { updateCurrentTheme } from '@/utils/domainHelper';

	// Props
	export let data: {
		pageData: APIResponse<'api::article.article'>;
		collectionData: APIResponseCollection<'api::article-page.article-page'>;
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

	updateCurrentTheme(Domain.Articles, pageData.attributes.Title);
</script>

<h1>Articles listed here</h1>

<CardGrid collection={cardData} />
