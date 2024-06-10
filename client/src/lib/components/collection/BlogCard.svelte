<script lang="ts">
	import type { ApiBlogPageBlogPage } from '@/types/contentTypes';
	import { getImgAlt, getImgUrl } from '@/utils/mediaHelpers';
	import type { Data, ImageMediaData } from '@/types/types';
	import { DisplayOption, getDisplayOption } from '@/utils/styleHelper';

	export let cardData: ApiBlogPageBlogPage;
	const imageData = cardData.attributes.MainImage as unknown as Data<ImageMediaData>;
</script>

<div class={getDisplayOption(DisplayOption.OneThird) + 'col-span-4 h-full'}>
	<img src={getImgUrl(imageData.data)} alt={getImgAlt(imageData.data)} class="w-full" />
	<div class="">
		<h1 class="text-lg font-bold">{cardData.attributes.Title}</h1>
		<p>{cardData.attributes.Introduction}</p>
	</div>
</div>
