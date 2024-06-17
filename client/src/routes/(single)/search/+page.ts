import { Search } from "@/api/searchApi.js";

export const load = async ({ route, params, url, fetch }) => {
  const query = url.searchParams.get("query") ?? "";

  // TODO: Update query parameters (query, facets, categories)
  return await Search(query, fetch);
};
