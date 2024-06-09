<script lang="ts">
	import { type BlogPage } from '$cmstypes/api/blog-page';
	export let data: BlogPage;
	console.log(data.attributes);
</script>

<h1>This is a blog</h1>
<h2>{data.attributes.Title}</h2>
<div>{data.attributes.Introduction}</div>
