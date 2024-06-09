<script lang="ts">
	import { Domain } from '@/types/types.js';
	import { updateCurrentTheme } from '@/utils/domainHelper';

	// Props
	export let data;

	// Page Data
	let pageData = data.data;

	updateCurrentTheme(Domain.AboutUs, pageData.attributes.Title);
</script>

<h1>About Us Page</h1>
