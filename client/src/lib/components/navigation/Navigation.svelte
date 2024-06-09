<script lang="ts">
	import type { DomainConstants } from '@/utils/constants';
	import DesktopNav from '../navigation/desktop/DesktopNav.svelte';
	import MobileNav from '../navigation/mobile/MobileNav.svelte';
	import { currentTheme } from '@/stores';

	let otherDomain: DomainConstants;
	currentTheme.subscribe((value) => {
		otherDomain = value.otherDomain;
	});
</script>

<MobileNav bind:otherDomain />
<DesktopNav bind:otherDomain />
