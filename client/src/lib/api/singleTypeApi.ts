import type { APIResponse } from '@/types/strapi';
import { Domain } from '@/types/types';
import constants from '@/utils/constants';
import type { Common } from '@strapi/strapi';
import qs from 'qs';

// TODO this should be a env variable
// TODO this needs to have authentication token
const BASE_URL = 'http://localhost:1337/api';

export const LoadSingleType = async (domain: Domain) => {
	switch (domain) {
		case Domain.Homecare:
			return await GetSingleType<APIResponse<'api::homecare.homecare'>>(
				constants.homecare.cmsEndpoint
			);
		case Domain.Renovation:
			return await GetSingleType<APIResponse<'api::renovation.renovation'>>(
				constants.renovation.cmsEndpoint
			);
		case Domain.AboutUs:
			return await GetSingleType<APIResponse<'api::about-us.about-us'>>(
				constants.aboutus.cmsEndpoint
			);
		case (Domain.Articles, Domain.Blogs, Domain.Projects):
			throw new Error('something went wrongs');
		default:
			throw new Error('something went wrongs');
	}
};

export const GetSingleType = async <Type extends APIResponse<Common.UID.ContentType>>(
	path: string
) => {
	const query = qs.stringify({ populate: '*' });
	async function getData() {
		const res = await fetch(BASE_URL + path + '?' + 'populate[ContentArea][populate]=*');

		if (!res.ok) {
			// This will activate the closest `error.js` Error Boundary
			throw new Error('Failed to fetch data');
		}

		return res.json();
	}

	return (await getData()) as Type;
};
