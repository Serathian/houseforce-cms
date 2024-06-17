<script lang="ts">
  // Components
  import * as Sheet from "$lib/components/ui/sheet";
  import { Button } from "$lib/components/ui/button/index.js";
  import * as Popover from "$lib/components/ui/popover";
  import { fade } from "svelte/transition";

  // Icons
  import Hammer from "lucide-svelte/icons/hammer";
  import Rss from "lucide-svelte/icons/rss";
  import Newspaper from "lucide-svelte/icons/newspaper";
  import Search from "lucide-svelte/icons/search";
  import Arrow from "lucide-svelte/icons/arrow-big-right-dash";
  import Menu from "lucide-svelte/icons/menu";

  // Other
  import type { DomainConstants } from "@/utils/constants";
  import constants, { PageType } from "@/utils/constants";
  import Brand from "@/components/blocks/Brand.svelte";
  import SearchInput from "@/components/atoms/inputs/SearchInput.svelte";

  // Props
  export let otherDomain: DomainConstants;
  export let currentDomain: DomainConstants;

  // Variables
  let y: number;
</script>

<svelte:window bind:scrollY={y} />

<nav
  class="bg-muted fixed top-0 h-16 w-full backdrop-filter transition-all lg:hidden z-50"
  class:bg-muted={y < 60}
>
  <div
    class="container flex h-full w-full items-center justify-between transition-all"
    transition:fade
  >
    <!-- Mobile side nav-->
    <Sheet.Root>
      <Sheet.Trigger asChild let:builder>
        <Button
          builders={[builder]}
          size="icon"
          variant="outline"
          class="text-primary shadow-lg"
        >
          <Menu class="h-5 w-5" />
          <span class="sr-only">Toggle Menu</span>
        </Button>
      </Sheet.Trigger>
      <Sheet.Content side="left" class="bg-muted">
        <Sheet.Header class="gap-10">
          <Sheet.Title>
            <Brand isMenu={true} />
          </Sheet.Title>
          <SearchInput />
          <Sheet.Close asChild let:builder>
            <Button
              builders={[builder]}
              variant="outline"
              class="border-primary text-primary gap-3"
              href="/projects"
            >
              <span class="sr-only">Projects</span>
              <Hammer />
              Projects
            </Button>

            <Button
              builders={[builder]}
              variant="outline"
              class="border-primary text-primary gap-3"
              href="/articles"
            >
              <span class="sr-only">Articles</span>
              <Newspaper />
              Articles
            </Button>

            <Button
              builders={[builder]}
              variant="outline"
              class="border-primary text-primary gap-3"
              href="/blogs"
            >
              <span class="sr-only">Blogs</span>
              <Rss />
              Blogs
            </Button>

            {#if otherDomain}
              <Button
                variant="outline"
                class="border-tertiary text-tertiary gap-3"
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
                  class="border-tertiary text-tertiary gap-3"
                  href={constants.homecare.homeUrl}
                >
                  <span class="sr-only">{constants.homecare.domainName}</span>
                  To {constants.homecare.domainName}
                  <Arrow />
                </Button>
                <Button
                  variant="outline"
                  class="border-secondary text-secondary gap-3"
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

    <!-- Search Button-->
    {#if currentDomain.pageType == PageType.Main}
      <div id="search">
        <Popover.Root>
          <Popover.Trigger asChild let:builder>
            <Button
              builders={[builder]}
              variant="outline"
              size="icon"
              class="text-primary shadow-lg"
            >
              <Search class="h-5 w-5" />
            </Button>
          </Popover.Trigger>
          <Popover.Content class="bg-muted -translate-x-2" sideOffset={-40}>
            <SearchInput />
          </Popover.Content>
        </Popover.Root>
      </div>
    {/if}
  </div>
</nav>
