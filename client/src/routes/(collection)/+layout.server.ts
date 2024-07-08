import { getFacets } from "@/api/facetApi.js";

export async function load({ fetch }) {
  return {
    facets: await getFacets(fetch),
  };
}
