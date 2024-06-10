<script lang="ts">
	import CardGrid from '@/components/collection/CardGrid.svelte';
	import ArticleCard from '@/components/collection/ArticleCard.svelte';

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

	updateCurrentTheme(Domain.Articles, pageData.attributes.Title);
</script>

<h1>Articles listed here</h1>

<CardGrid {collection} component={ArticleCard} />
