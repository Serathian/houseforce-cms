<script lang="ts">
	import type { ImageMediaData } from '@/types/types';
	import { getImgAlt, getImgUrl } from '@/utils/mediaHelpers';

	export let imageData: ImageMediaData;
	export let cssClass: string;

	console.log(imageData);
</script>

<img
	class={cssClass + ' border-secondary my-auto w-full border-4 shadow-lg'}
	src={getImgUrl(imageData)}
	alt={getImgAlt(imageData)}
/>
