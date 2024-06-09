<script lang="ts">
	import { currentTheme } from '@/stores';

	let domainName: string;
	currentTheme.subscribe((value) => {
		domainName = value.currentDomain.domainName;
	});
</script>

<div id="brand-wrapper" class="mx-auto flex flex-col items-center text-3xl font-extrabold md:mx-0">
	<span class="text-primary">House<span class="text-secondary">Force</span></span>
	<span class="text-sm italic">{domainName}</span>
</div>
