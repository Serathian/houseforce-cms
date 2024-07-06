<script lang="ts">
  export let cssClass = "";
  export let data;

  const colour = data.attributes.Color;
  console.log(colour);
</script>

<span
  style="background-color: {colour};"
  class={cssClass + " text-white font-bold"}>{data.attributes.Name}</span
>
