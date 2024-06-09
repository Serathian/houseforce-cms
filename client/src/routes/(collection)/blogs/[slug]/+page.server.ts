import { type Payload } from '$cmstypes/common/Payload';
import { type BlogPage } from '$cmstypes/api/blog-page';
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ fetch, params }) => {
	const response = await fetch(`http://localhost:1337/api/blog-pages/${params.slug}`);
	const payload: Payload<BlogPage> = await response.json();

	return payload.data;
};
