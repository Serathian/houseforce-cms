<script lang="ts">
	import { currentTheme } from '@/stores';

	let heroText: string;
	currentTheme.subscribe((value) => {
		heroText = value.heroText;
	});
</script>

<header class="flex h-80 flex-col items-center justify-center bg-secondary md:pt-36">
	<h1 class="translate-y-8">{heroText}</h1>
</header>
