<script lang="ts">
  import { facets, type Category } from "@/stores/facetStore";

  export let categoryId: number;
  export let cssClass: string;

  let categories: Category[];

  $: category = categories.find((c) => c.id === categoryId) ?? {
    id: -1,
    name: "not-found",
    color: "#000000",
  };

  facets.subscribe((value) => {
    categories = value.Categories;
  });
</script>

<span
  style="background-color: {category.color};"
  class={cssClass + " text-white font-bold"}>{category.name}</span
>
