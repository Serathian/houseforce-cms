<script lang="ts">
  import { facets, type Category } from "@/stores/facetStore";

  export let categoryId: number;
  export let cssClass: string;

  let category: Category;

  facets.subscribe((value) => {
    category = value.Categories.find((c) => c.id === categoryId) ?? {
      id: -1,
      name: "not-found",
      color: "#ffffff",
    };
  });
</script>

<span
  style="background-color: {category.color};"
  class={cssClass + " text-white font-bold"}>{category.name}</span
>
