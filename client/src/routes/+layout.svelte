<script>
	import { currentTheme } from '@/stores';
	import { browser } from '$app/environment';

	import '../app.pcss';

	$: {
		if (browser) {
			document.body.setAttribute('data-theme', $currentTheme.currentDomain.dataTheme);
		}
	}
</script>

<slot></slot>
