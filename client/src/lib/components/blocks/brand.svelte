<script lang="ts">
	import { currentTheme } from '@/stores';

	export let isMenu: boolean = false;

	let domainName: string;
	currentTheme.subscribe((value) => {
		domainName = value.currentDomain.domainName;
	});

	const primaryFontSize = isMenu ? 'text-4xl' : ' text-5xl lg:text-9xl';
	const secondaryFontSize = isMenu ? 'text-sm' : 'text-md lg:text-lg';
</script>

<div class="flex flex-col items-center md:mx-0">
	<div class="font-extrabold">
		<span class={'text-primary ' + primaryFontSize}>
			House<span class="text-secondary">Force</span>
		</span>
	</div>
	<span class={'italic ' + secondaryFontSize}>Excellence is a way of life.</span>
</div>
