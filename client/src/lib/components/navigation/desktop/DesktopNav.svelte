<script lang="ts">
  // Components
  import { Button } from "$lib/components/ui/button/index.js";
  import { Input } from "$lib/components/ui/input";

  // Icons
  import Hammer from "lucide-svelte/icons/hammer";
  import Rss from "lucide-svelte/icons/rss";
  import Newspaper from "lucide-svelte/icons/newspaper";
  import Search from "lucide-svelte/icons/search";
  import CircleUserRound from "lucide-svelte/icons/circle-user-round";

  // Other
  import constants, { PageType, type DomainConstants } from "@/utils/constants";

  // Props
  export let currentDomain: DomainConstants;

  // Variables
  let y: number;
</script>

<svelte:window bind:scrollY={y} />

<nav
  class="fixed top-0 hidden w-full transition-all lg:block z-50"
  class:bg-muted={y > 60}
  class:shadow-lg={y > 60}
>
  <nav
    class="container sticky top-0 flex h-16 w-full items-center justify-between"
  >
    <!-- Navigation -->
    <div class="gap3 flex">
      <Button
        variant="link"
        class="focus:text-primary hover:text-primary gap-3 text-black"
        href={constants.projects.homeUrl}
      >
        <span class="sr-only">Projects</span>
        <Hammer />
        Projects
      </Button>

      <Button
        variant="link"
        class="focus:text-primary hover:text-primary gap-3 text-black"
        href={constants.articles.homeUrl}
      >
        <span class="sr-only">Articles</span>
        <Newspaper />
        Articles
      </Button>

      <Button
        variant="link"
        class="focus:text-primary hover:text-primary gap-3 text-black"
        href={constants.blogs.homeUrl}
      >
        <span class="sr-only">Blogs</span>
        <Rss />
        Blogs
      </Button>

      <Button
        variant="link"
        class="focus:text-primary hover:text-primary gap-3 text-black"
        href={constants.aboutus.homeUrl}
      >
        <span class="sr-only">About Us</span>
        <CircleUserRound />
        About Us
      </Button>
    </div>
    <!-- search -->
    {#if currentDomain.pageType == PageType.Main}
      <div class="relative">
        <Search
          class="text-muted-foreground absolute left-2.5 top-2.5 h-4 w-4"
        />
        <Input
          type="search"
          placeholder="Looking for something?"
          class="bg-background focus-visible:ring-primary w-full rounded-lg pl-8 md:w-[200px] lg:w-[320px]"
        />
      </div>
    {/if}
  </nav>
</nav>
