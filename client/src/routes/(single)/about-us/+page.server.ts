import { LoadSingleType } from '@/api/singleTypeApi';
import type { PageServerLoad } from './$types';
import { Domain } from '@/types/types';

export const load: PageServerLoad = async () => {
	return await LoadSingleType(Domain.AboutUs);
};
