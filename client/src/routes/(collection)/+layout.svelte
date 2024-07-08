<script lang="ts">
  import Navigation from "$lib/components/navigation/Navigation.svelte";
  import Hero from "$lib/components/hero/Hero.svelte";
  import Footer from "@/components/footer/Footer.svelte";
  import { facets } from "@/stores/facetStore.js";

  export let data;
  const { Tags, Categories } = data.facets;
  facets.populate(Tags, Categories);
</script>

<div class="relative">
  <Navigation />
  <Hero />

  <div class="container py-16">
    <slot />
  </div>
  <Footer />
</div>
