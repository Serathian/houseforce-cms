<script lang="ts">
  import { getDisplayOption } from "@/utils/styleHelper";
  import { Gem, HandHeart, Handshake } from "lucide-svelte";
  export let block: any;
  const cssClass = getDisplayOption(block.DisplayOption);
  const tabs = block.Tabs;
  let active = 0;

  const getIcon = (icon: string) => {
    switch (icon) {
      case "Diamond":
        return Gem;
      case "HandShake":
        return Handshake;
      case "Heart":
        return HandHeart;
    }
  };
</script>

<div class={cssClass + "grid grid-cols-5"}>
  <div id="tabs" class="col-span-1 flex flex-col gap-2">
    {#each tabs as tab, index}
      <button
        on:click={() => (active = index)}
        class={`relative flex flex-col gap-1 items-center justify-center transition duration-300 h-32 rounded-l-xl ${active == index ? "bg-muted text-secondary" : "bg-muted-foreground text-secondary-foreground"}`}
      >
        <h2 class="font-bold">{tab.TabTitle}</h2>
        <svelte:component this={getIcon(tab.Icon)} />
      </button>
    {/each}
  </div>
  <div
    id="content"
    class={`bg-muted w-full col-span-4 flex flex-col gap-3 items-center justify-center rounded-r-xl `}
  >
    <h3 class="text-2xl">{tabs[active].ContentTitle}</h3>
    <p class="w-2/4">{tabs[active].Content}</p>
  </div>
</div>
