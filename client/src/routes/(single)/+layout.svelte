<script lang="ts">
  import Navigation from "$lib/components/navigation/Navigation.svelte";
  import Hero from "$lib/components/hero/Hero.svelte";
  import Footer from "@/components/footer/Footer.svelte";
  import ContactBubble from "@/components/contact/ContactBubble.svelte";
</script>

<div class="relative">
  <Navigation />
  <Hero />

  <div class="container grid gap-3 pt-6 pb-20">
    <slot />
  </div>

  <ContactBubble />
  <Footer />
</div>
