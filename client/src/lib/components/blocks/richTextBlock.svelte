<script lang="ts">
	import type { RichTextBlockChild, RichTextBlocks } from '@/types/strapiRichText';
	import {
		RichTextBlockChildType,
		RichTextBlockFormat,
		RichTextBlockType
	} from '@/types/strapiRichText';
	import type { StrapiImage } from '@/types/types';

	export let data: RichTextBlocks[];

	const renderList = (block: RichTextBlocks) => {
		let html = '';
		block.children.forEach((child) => {
			html += '<li>';
			child.children.forEach((childChild) => {
				if (childChild.type === RichTextBlockChildType.text) {
					if (childChild.bold) html += `<strong>${childChild.text}</strong>`;
					else if (childChild.italic) html += `<i>${childChild.text}</i>`;
					else if (childChild.underline) html += `<u>${childChild.text}</u>`;
					else if (childChild.strikethrough) html += `<s>${childChild.text}</s>`;
					else html += childChild.text;
				}
			});
			html += '</li>';
		});

		return html;
	};

	const renderText = (children: RichTextBlockChild[]) => {
		let html = '';
		children.forEach((childChild) => {
			if (childChild.type === RichTextBlockChildType.text) {
				if (childChild.bold) html += `<strong>${childChild.text}</strong>`;
				else if (childChild.italic) html += `<i>${childChild.text}</i>`;
				else if (childChild.underline) html += `<u>${childChild.text}</u>`;
				else if (childChild.strikethrough) html += `<s>${childChild.text}</s>`;
				else html += childChild.text;
			}
		});

		return html;
	};

	// TODO: add image path parsing
	const getPathForImage = (image: StrapiImage) => {
		return '';
	};
</script>

<div class="prose prose-slate prose-a:text-blue-600">
	{#each data as block}
		<!-- Paragraph -->
		{#if block && block.type === RichTextBlockType.paragraph}
			<p>
				{#each block.children as child}
					{#if child.type === RichTextBlockChildType.text && child.bold}
						<strong>{child.text}</strong>
					{/if}

					{#if child.type === RichTextBlockChildType.text && child.italic}
						<i>{child.text}</i>
					{/if}

					{#if child.type === RichTextBlockChildType.text && child.underline}
						<u>{child.text}</u>
					{/if}

					{#if child.type === RichTextBlockChildType.text && child.strikethrough}
						<s>{child.text}</s>
					{/if}

					{#if child.type === RichTextBlockChildType.text && child.code}
						<code>{child.text}</code>
					{/if}

					{#if child.type === RichTextBlockChildType.link && child.url}
						<a href={child.url}>{@html renderText(child.children)}</a>
					{/if}

					{#if child.type === RichTextBlockChildType.text}
						{child.text}
					{/if}
				{/each}
			</p>
		{/if}

		<!-- Lists -->
		{#if block && block.type === RichTextBlockType.list && block.format === RichTextBlockFormat.unordered}
			<ul>{@html renderList(block)}</ul>
		{/if}

		{#if block && block.type === RichTextBlockType.list && block.format === RichTextBlockFormat.ordered}
			<ol>{@html renderList(block)}</ol>
		{/if}

		<!-- Headings -->
		{#if block && block.type === RichTextBlockType.heading}
			{#if block.level === 1}
				<h1>{@html renderText(block.children)}</h1>
			{:else if block.level === 2}
				<h2>{@html renderText(block.children)}</h2>
			{:else if block.level === 3}
				<h3>{@html renderText(block.children)}</h3>
			{:else if block.level === 4}
				<h4>{@html renderText(block.children)}</h4>
			{:else if block.level === 5}
				<h5>{@html renderText(block.children)}</h5>
			{:else if block.level === 6}
				<h6>{@html renderText(block.children)}</h6>
			{/if}
		{/if}
		<!-- Image -->
		{#if block && block.type === RichTextBlockType.image && block.image}
			<img
				src={getPathForImage(block.image)}
				width="1000"
				placeholder="15"
				alt={block.image.alternativeText ?? ''}
				title={block.image.name}
				class=""
			/>
		{/if}
	{/each}
</div>
