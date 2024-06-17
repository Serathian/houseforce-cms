import { LoadSingleType } from "@/api/singleTypeApi";
import type { PageServerLoad } from "./$types";
import { Pages } from "@/types/types";

export const load: PageServerLoad = async () => {
  return await LoadSingleType(Pages.Homecare);
};
