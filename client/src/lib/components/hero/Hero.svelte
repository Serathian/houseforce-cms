<script lang="ts">
  import { currentTheme } from "@/stores";
  import Brand from "../blocks/Brand.svelte";
  import { Domains } from "@/utils/constants";

  let isHomecare: boolean;
  let isRenovation: boolean;
  currentTheme.subscribe((value) => {
    isHomecare = value.currentDomain.domain == Domains.Homecare;
    isRenovation = value.currentDomain.domain == Domains.Renovation;
  });

  const activeElementCss =
    "py-1 px-3 m-1 bg-white rounded-full shadow-md font-bold";
  const inactiveElementCss = "py-1 px-3 m-1 rounded-full font-bold";
</script>

<header
  class="bg-muted flex h-[500px] flex-col items-center justify-center gap-3"
>
  <Brand />
  {#if isHomecare || isRenovation}
    <div class="bg-secondary-foreground flex w-max gap-6 rounded-full">
      <a
        href="/homecare"
        class={isHomecare ? activeElementCss : inactiveElementCss}
      >
        Homecare
      </a>
      <a
        href="/renovation"
        class={isRenovation ? activeElementCss : inactiveElementCss}
      >
        Renovation
      </a>
    </div>
  {/if}
</header>
