import { Search } from "@/api/searchApi.js";

export const load = async ({ route, params, url }) => {
  const query = url.searchParams.get("query") ?? "";
  return await Search(query);
};
