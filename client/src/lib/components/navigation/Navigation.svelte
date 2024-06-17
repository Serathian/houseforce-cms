<script lang="ts">
  import type { DomainConstants } from "@/utils/constants";
  import DesktopNav from "../navigation/desktop/DesktopNav.svelte";
  import MobileNav from "../navigation/mobile/MobileNav.svelte";
  import { currentTheme } from "@/stores";

  let otherDomain: DomainConstants;
  let currentDomain: DomainConstants;
  currentTheme.subscribe((value) => {
    otherDomain = value.otherDomain;
    currentDomain = value.currentDomain;
  });
</script>

<MobileNav bind:otherDomain bind:currentDomain />
<DesktopNav bind:currentDomain />
