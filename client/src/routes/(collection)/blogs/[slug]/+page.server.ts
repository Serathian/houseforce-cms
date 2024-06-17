import type { PageServerLoad } from "./$types";
import { Domain } from "@/types/types";
import { LoadCollectionItem } from "@/api/collectionTypeApi";

// TODO: All server loads should pass the fetch to the method?
export const load: PageServerLoad = async ({ fetch, params }) => {
  return await LoadCollectionItem(Domain.Blogs, params.slug);
};
