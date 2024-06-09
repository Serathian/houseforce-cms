<script lang="ts">
	import { Domain } from '@/types/types.js';
	import { updateCurrentTheme } from '@/utils/domainHelper';

	// Props
	export let data;

	// Page Data
	let pageData = data.data;

	updateCurrentTheme(Domain.Renovation, pageData.attributes.Title);
</script>

<h1 class="full">This will be the Renovation home page</h1>
