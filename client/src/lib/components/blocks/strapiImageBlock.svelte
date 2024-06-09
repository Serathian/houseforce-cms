<script lang="ts">
	export let data;
	const imgUrl: string = data.data[0].attributes.url;
	const imgSrc = 'http://localhost:1337' + imgUrl;
	console.log(imgSrc);
</script>

<img class="rounded-xl" src={imgSrc} />
