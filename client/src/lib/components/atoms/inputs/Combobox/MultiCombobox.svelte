<script lang="ts">
  import Check from "lucide-svelte/icons/check";
  import ChevronsUpDown from "lucide-svelte/icons/chevrons-up-down";
  import * as Command from "$lib/components/ui/command/index.js";
  import * as Popover from "$lib/components/ui/popover/index.js";
  import { Button } from "$lib/components/ui/button/index.js";
  import { cn } from "$lib/utils.js";
  import { tick } from "svelte";
  import type { Facet } from "@/types/types";

  export let facets: Facet[];
  export let placeholder: string = "Select an option.";
  export let selectedValues: number[];

  let open = false;

  $: selectedValues = [];

  $: selectedFacets = selectedValues.length
    ? selectedValues.map((x) => facets.find((y) => y.id == x))
    : [
        {
          name: placeholder,
          id: -1,
          color: null,
        },
      ];

  // We want to refocus the trigger button when the user selects
  // an item from the list so users can continue navigating the
  // rest of the form with the keyboard.
  function closeAndFocusTrigger(triggerId: string) {
    open = false;
    tick().then(() => {
      document.getElementById(triggerId)?.focus();
    });
  }

  function handleSelect(currentValue: string) {
    const currentValueId = facets.find((x) => x.name == currentValue)?.id ?? -1;
    const isSelected = selectedValues.includes(currentValueId);

    if (isSelected) {
      selectedValues = selectedValues.filter((x) => x != currentValueId);
    } else {
      selectedValues = [...selectedValues, currentValueId];
    }
  }
</script>

<Popover.Root bind:open let:ids>
  <Popover.Trigger asChild let:builder>
    <Button
      builders={[builder]}
      variant="outline"
      role="combobox"
      aria-expanded={open}
      class="w-[200px] justify-between"
    >
      {selectedFacets.length > 1
        ? "Filtering by selected."
        : selectedFacets.map((x) => `${x?.name}`)}
      <ChevronsUpDown class="ml-2 h-4 w-4 shrink-0 opacity-50" />
    </Button>
  </Popover.Trigger>
  <Popover.Content class="w-[200px] p-0">
    <Command.Root>
      <Command.Input placeholder="Search" />
      <Command.Empty>Nothing found.</Command.Empty>
      <Command.Group>
        {#each facets as facet}
          <Command.Item
            value={facet.name}
            onSelect={(currentValue) => {
              handleSelect(currentValue);
              closeAndFocusTrigger(ids.trigger);
            }}
          >
            <Check
              class={cn(
                "mr-2 h-4 w-4",
                !selectedValues.includes(facet.id) && "text-transparent",
              )}
            />
            {facet.name}
          </Command.Item>
        {/each}
      </Command.Group>
    </Command.Root>
  </Popover.Content>
</Popover.Root>
