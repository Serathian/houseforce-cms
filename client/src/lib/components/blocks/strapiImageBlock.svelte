<script lang="ts">
	export let data;
	export let cssClass: string;

	const imgUrl: string = data.data[0].attributes.url;
	const imgSrc = 'http://localhost:1337' + imgUrl;
	console.log(imgSrc);
</script>

<img
	class={cssClass + ' border-secondary my-auto w-full border-4 shadow-lg'}
	src={imgSrc}
	alt={data.alt ?? 'cms-image'}
/>
