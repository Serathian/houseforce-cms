<script lang="ts">
  import { Headset } from "lucide-svelte";
  import * as Dialog from "../ui/dialog";
  import ContactForm from "./ContactForm.svelte";

  let submitSuccess = false;
</script>

<Dialog.Root>
  <Dialog.Trigger>
    <button
      class="fixed bottom-4 right-4 md:bottom-10 md:right-10 bg-muted rounded-full text-secondary flex h-16 w-16 md:h-32 md:w-32 align-middle items-center border-muted-foreground border-2 shadow-xl hover:border-secondary hover:shadow-inner"
    >
      <div class="flex flex-col align-middle items-center w-full">
        <Headset />
        <span class="hidden md:block">Contact Us</span>
      </div>
    </button>
  </Dialog.Trigger>
  <Dialog.Content class="max-w-[300px] md:max-w-[500px]">
    {#if !submitSuccess}
      <Dialog.Header>
        <Dialog.Title>Get In Contact</Dialog.Title>
        <Dialog.Description>
          We look forward to hearing from you!
        </Dialog.Description>
      </Dialog.Header>
      <ContactForm bind:submitSuccess />
    {:else}
      <Dialog.Header>
        <Dialog.Title>Thanks for getting it touch!</Dialog.Title>
        <Dialog.Description>
          We'll get back to you as soon as possible.
        </Dialog.Description>
      </Dialog.Header>
    {/if}
  </Dialog.Content>
</Dialog.Root>
