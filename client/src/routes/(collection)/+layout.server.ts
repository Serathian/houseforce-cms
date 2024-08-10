import { getAuthors } from "@/api/authorApi";
import { getFacets } from "@/api/facetApi.js";

export async function load({ fetch }) {
  return {
    facets: await getFacets(fetch),
    authors: await getAuthors(fetch),
  };
}
