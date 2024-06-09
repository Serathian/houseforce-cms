import type { PageServerLoad } from './$types';
import { Domain } from '@/types/types';
import { LoadCollectionType } from '@/api/collectionTypeApi';

export const load: PageServerLoad = async () => {
	return await LoadCollectionType(Domain.Articles);
};
