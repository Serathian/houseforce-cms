<script lang="ts">
	import CardGrid from '@/components/collection/CardGrid.svelte';
	import BlogCard from '@/components/collection/BlogCard.svelte';

	import type { APIResponse, APIResponseCollection } from '@/types/strapi';
	import { Domain, type CardData } from '@/types/types.js';
	import { updateCurrentTheme } from '@/utils/domainHelper';
	import type { Attribute } from '@strapi/strapi';

	// Props
	export let data: {
		pageData: APIResponse<'api::blog.blog'>;
		collectionData: APIResponseCollection<'api::blog-page.blog-page'>;
	};

	// Data
	let pageData = data.pageData.data;
	let collection = data.collectionData.data;

	updateCurrentTheme(Domain.Blogs, pageData.attributes.Title);
</script>

<h1>Blogs listed here</h1>
<CardGrid {collection} component={BlogCard} />
