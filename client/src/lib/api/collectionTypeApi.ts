import type { APIResponse, APIResponseCollection } from '@/types/strapi';
import { Domain } from '@/types/types';
import constants from '@/utils/constants';
import type { Common } from '@strapi/strapi';
import qs from 'qs';
import { GetSingleType } from './singleTypeApi';

// TODO this should be a env variable
// TODO this needs to have authentication token
const BASE_URL = 'http://localhost:1337/api';

export const LoadCollectionType = async (domain: Domain) => {
	let pageData: APIResponse<Common.UID.ContentType>;
	let collectionData: APIResponseCollection<Common.UID.ContentType>;

	switch (domain) {
		case Domain.Articles:
			pageData = await GetSingleType<APIResponse<'api::article.article'>>(
				constants.articles.cmsEndpoint
			);
			collectionData = await GetCollectionType<
				APIResponseCollection<'api::article-page.article-page'>
			>(constants.articles.collectionEnpoint);
			break;
		case Domain.Blogs:
			pageData = await GetSingleType<APIResponse<'api::blog.blog'>>(constants.blogs.cmsEndpoint);
			collectionData = await GetCollectionType<APIResponseCollection<'api::blog-page.blog-page'>>(
				constants.blogs.collectionEnpoint
			);
			break;
		case Domain.Projects:
			pageData = await GetSingleType<APIResponse<'api::project.project'>>(
				constants.projects.cmsEndpoint
			);
			collectionData = await GetCollectionType<
				APIResponseCollection<'api::project-page.project-page'>
			>(constants.projects.collectionEnpoint);
			break;
		case (Domain.Homecare, Domain.Renovation, Domain.AboutUs):
			throw new Error('something went wrongs');
		default:
			throw new Error('something went wrongs');
	}

	return { pageData, collectionData };
};

// TODO: Load first X Amount of collection types
export const GetCollectionType = async <Type extends APIResponseCollection<Common.UID.ContentType>>(
	path: string
) => {
	const query = qs.stringify({ populate: '*' });

	async function getData() {
		const res = await fetch(BASE_URL + path + '?' + query);

		if (!res.ok) {
			// This will activate the closest `error.js` Error Boundary
			throw new Error('Failed to fetch data');
		}

		return res.json();
	}

	return (await getData()) as Type;
};
