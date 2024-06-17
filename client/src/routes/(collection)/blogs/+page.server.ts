import type { PageServerLoad } from "./$types";
import { Pages } from "@/types/types";
import { LoadCollectionType } from "@/api/collectionTypeApi";

export const load: PageServerLoad = async () => {
  return await LoadCollectionType(Pages.Blogs);
};
