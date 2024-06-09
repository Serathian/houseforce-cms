<script lang="ts">
	// Components
	import { Button } from '$lib/components/ui/button/index.js';
	import { Input } from '$lib/components/ui/input';

	// Icons
	import Hammer from 'lucide-svelte/icons/hammer';
	import Rss from 'lucide-svelte/icons/rss';
	import Newspaper from 'lucide-svelte/icons/newspaper';
	import Arrow from 'lucide-svelte/icons/arrow-big-right-dash';
	import Search from 'lucide-svelte/icons/search';
	import CircleUserRound from 'lucide-svelte/icons/circle-user-round';
	import Brand from '@/components/blocks/brand.svelte';

	// Other
	import type { DomainConstants } from '@/utils/constants';
	import constants from '@/utils/constants';

	// Props
	export let otherDomain: DomainConstants;

	// Variables
	let y: number;
</script>

<svelte:window bind:scrollY={y} />

<nav class="fixed top-0 hidden w-full bg-muted md:block">
	{#if y < 80}
		<div class="container top-0 flex h-16 w-full items-center justify-between">
			<!-- Brand -->
			<Brand />

			<!-- search -->
			<div class="relative">
				<Search class="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
				<Input
					type="search"
					placeholder="Search..."
					class="w-full rounded-lg bg-background pl-8 focus-visible:ring-primary md:w-[200px] lg:w-[320px]"
				/>
			</div>
		</div>
	{/if}
	<nav class="container sticky top-0 flex h-16 w-full items-center justify-between">
		<!-- Navigation -->
		<div class="flex gap-3">
			<Button
				variant="outline"
				class="gap-3 border-primary text-primary"
				href={constants.projects.homeUrl}
			>
				<span class="sr-only">Projects</span>
				<Hammer />
				Projects
			</Button>

			<Button
				variant="outline"
				class="gap-3 border-primary text-primary"
				href={constants.articles.homeUrl}
			>
				<span class="sr-only">Articles</span>
				<Newspaper />
				Articles
			</Button>

			<Button
				variant="outline"
				class="gap-3 border-primary text-primary"
				href={constants.blogs.homeUrl}
			>
				<span class="sr-only">Blogs</span>
				<Rss />
				Blogs
			</Button>

			<Button
				variant="outline"
				class="gap-3 border-primary text-primary"
				href={constants.aboutus.homeUrl}
			>
				<span class="sr-only">About Us</span>
				<CircleUserRound />
				About Us
			</Button>
		</div>
		{#if otherDomain}
			<Button
				variant="outline"
				class="gap-3 border-tertiary text-tertiary"
				href={otherDomain.homeUrl}
			>
				<span class="sr-only">{otherDomain.domainName}</span>
				To {otherDomain.domainName}
				<Arrow />
			</Button>
		{:else}
			<div>
				<Button
					variant="outline"
					class="gap-3 border-primary text-primary"
					href={constants.homecare.homeUrl}
				>
					<span class="sr-only">{constants.homecare.domainName}</span>
					To {constants.homecare.domainName}
					<Arrow />
				</Button>
				<Button
					variant="outline"
					class="gap-3 border-secondary text-secondary"
					href={constants.renovation.homeUrl}
				>
					<span class="sr-only">{constants.homecare.domainName}</span>
					To {constants.renovation.domainName}
					<Arrow />
				</Button>
			</div>
		{/if}
	</nav>
</nav>
