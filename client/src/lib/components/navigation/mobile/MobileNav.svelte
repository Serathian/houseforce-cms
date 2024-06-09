<script lang="ts">
	// Components
	import * as Sheet from '$lib/components/ui/sheet';
	import { Button } from '$lib/components/ui/button/index.js';
	import { Input } from '$lib/components/ui/input';
	import * as Popover from '$lib/components/ui/popover';
	import { fade, fly } from 'svelte/transition';

	// Blocks
	import Brand from '$lib/components/blocks/brand.svelte';

	// Icons
	import Hammer from 'lucide-svelte/icons/hammer';
	import Rss from 'lucide-svelte/icons/rss';
	import Newspaper from 'lucide-svelte/icons/newspaper';
	import Search from 'lucide-svelte/icons/search';
	import Arrow from 'lucide-svelte/icons/arrow-big-right-dash';
	import Menu from 'lucide-svelte/icons/menu';

	// Other
	import type { DomainConstants } from '@/utils/constants';
	import constants from '@/utils/constants';

	// Props
	export let otherDomain: DomainConstants;

	// Variables
	let y: number;
</script>

<svelte:window bind:scrollY={y} />

<nav
	class="fixed top-0 h-16 w-full bg-muted backdrop-filter transition-all md:hidden"
	class:bg-muted={y < 60}
>
	<div
		class="container flex h-full w-full items-center justify-between transition-all"
		transition:fade
	>
		<!-- Mobile side nav-->
		<Sheet.Root>
			<Sheet.Trigger asChild let:builder>
				<Button builders={[builder]} size="icon" variant="outline" class="text-primary">
					<Menu class="h-5 w-5" />
					<span class="sr-only">Toggle Menu</span>
				</Button>
			</Sheet.Trigger>
			<Sheet.Content side="left" class="bg-muted">
				<Sheet.Header class="gap-10">
					<Sheet.Title class="text-2xl">
						<span class="text-primary">House<span class="text-secondary">Force</span></span>
					</Sheet.Title>

					<div class="relative">
						<Search class="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
						<Input
							type="search"
							placeholder="Search..."
							class="w-full rounded-lg bg-background pl-8 focus-visible:ring-primary md:w-[200px] lg:w-[320px]"
						/>
					</div>
					<Sheet.Close asChild let:builder>
						<Button
							builders={[builder]}
							variant="outline"
							class="gap-3 border-primary text-primary"
							href="/projects"
						>
							<span class="sr-only">Projects</span>
							<Hammer />
							Projects
						</Button>

						<Button
							builders={[builder]}
							variant="outline"
							class="gap-3 border-primary text-primary"
							href="/articles"
						>
							<span class="sr-only">Articles</span>
							<Newspaper />
							Articles
						</Button>

						<Button
							builders={[builder]}
							variant="outline"
							class="gap-3 border-primary text-primary"
							href="/blogs"
						>
							<span class="sr-only">Blogs</span>
							<Rss />
							Blogs
						</Button>

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
							<div class="flex flex-col gap-2">
								<Button
									variant="outline"
									class="gap-3 border-tertiary text-tertiary"
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
					</Sheet.Close>
				</Sheet.Header>
			</Sheet.Content>
		</Sheet.Root>

		<!-- Brand -->
		{#if y < 60}
			<div transition:fly>
				<Brand />
			</div>
		{/if}
		<!-- search -->
		<div id="search" class="">
			<Popover.Root>
				<Popover.Trigger asChild let:builder>
					<Button builders={[builder]} variant="outline" size="icon" class="text-primary">
						<Search class="h-5 w-5" />
					</Button>
				</Popover.Trigger>
				<Popover.Content class="w-full -translate-x-2 bg-muted" sideOffset={-40}>
					<div class="relative">
						<Search class="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
						<Input
							type="search"
							placeholder="Search..."
							class="w-full rounded-lg bg-background pl-8 focus-visible:ring-primary md:w-[200px] lg:w-[320px]"
						/>
					</div>
				</Popover.Content>
			</Popover.Root>
		</div>
	</div>
</nav>
