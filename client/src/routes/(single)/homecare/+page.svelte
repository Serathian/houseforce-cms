<script lang="ts">
	import ContentArea from '@/components/content-area/contentArea.svelte';
	import type { APIResponse } from '@/types/strapi';
	import { Domain } from '@/types/types.js';
	import { updateCurrentTheme } from '@/utils/domainHelper';

	// Props
	export let data: APIResponse<'api::homecare.homecare'>;

	// Page Data
	let pageData = data.data;
	let contentArea = pageData.attributes.ContentArea;

	updateCurrentTheme(Domain.Homecare, pageData.attributes.Title);
</script>

<ContentArea data={contentArea} />
