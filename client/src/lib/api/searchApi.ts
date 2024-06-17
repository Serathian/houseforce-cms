import { PUBLIC_SEARCH_BASE_URL } from "$env/static/public";

interface MeilisearchParameters {
  q?: string;
  offset?: number;
  limit?: number;
  hitsPerPage?: number;
  page?: number;
  filter?: string;
  facets?: string[];
  attributesToRetrieve?: string[];
  attributesToCrop?: string[];
  cropLength?: number | undefined;
  attributesToHighlight?: string[];
  highlightPreTag?: string;
  highlightPostTag?: string;
  showMatchesPosition?: boolean;
  sort?: string[];
  matchingStrategy?: string;
  showRankingScore?: boolean;
  attributesToSearchOn?: string[];
  hybrid?: Object;
  vector?: number[];
}

interface MeilisearchResult<T> {
  hits: T[];
  offest: number;
  limit: number;
  estimatedTotalHits: number;
  totalHits: number;
  totalPages: number;
  hitsPerPage: number;
  page: number;
  facetDistribution: Object;
  facetStats: Object;
  processingTimeMs: Number;
  query: string;
}

export const Search = async (query: string, fetcher: typeof fetch = fetch) => {
  const url = PUBLIC_SEARCH_BASE_URL + "/indexes/content/search";

  const searchParams: MeilisearchParameters = {
    q: query,
  };

  const response = await fetcher(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(searchParams),
  });

  if (!response.ok) {
    throw new Error("Error in search");
  }
  const result: MeilisearchResult<Object> = await response.json();
  return result;
};
