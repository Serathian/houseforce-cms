<script lang="ts">
	import Navigation from '$lib/components/navigation/Navigation.svelte';
	import Hero from '$lib/components/hero/Hero.svelte';
</script>

<Navigation />
<Hero />

<div class="container">
	<slot />
</div>
