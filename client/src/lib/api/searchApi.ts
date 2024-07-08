import { env } from "$env/dynamic/public";
import { Pages } from "@/types/types";

const { PUBLIC_SEARCH_BASE_URL, PUBLIC_SEARCH_KEY } = env;

interface MeilisearchParameters {
  q?: string;
  offset?: number;
  limit?: number;
  hitsPerPage?: number;
  page?: number;
  filter?: string | string[][];
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
  hybrid?: object;
  vector?: number[];
}

export interface MeilisearchResult<T> {
  hits: T[];
  offest: number;
  limit: number;
  estimatedTotalHits: number;
  totalHits: number;
  totalPages: number;
  hitsPerPage: number;
  page: number;
  facetDistribution: object;
  facetStats: object;
  processingTimeMs: number;
  query: string;
}

export interface SearchResult {
  Title: string;
  MainImage: Object;
  Introduction: string;
  Category: number;
  Tags: number[];
}

export const Search = async (
  page: Pages,
  fetcher: typeof fetch = fetch,
  query?: string,
  categories?: number[],
  tags?: number[],
) => {
  const url = PUBLIC_SEARCH_BASE_URL + `/indexes/${getIndex(page)}/search`;

  const categoriesFilter =
    categories?.map((category) => `Category = ${category}`) ?? [];
  const tagsFilter = tags?.map((tag) => `Tags = ${tag}`) ?? [];

  const searchParams: MeilisearchParameters = {
    q: query,
    filter: [categoriesFilter, tagsFilter],
    facets: ["*"],
    attributesToRetrieve: [
      "Title",
      "MainImage",
      "Introduction",
      "Category",
      "Tags",
    ],
  };

  const response = await fetcher(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${PUBLIC_SEARCH_KEY!}`,
    },
    body: JSON.stringify(searchParams),
  });

  if (!response.ok) {
    throw new Error("Error in search", { cause: response });
  }
  const result: MeilisearchResult<SearchResult> = await response.json();
  return result;
};

const getIndex = (index: Pages) => {
  switch (index) {
    case Pages.Articles:
      return "article-page";
    case Pages.Blogs:
      return "blog-page";
    case Pages.Projects:
      return "project-page";
    default:
      return "content";
  }
};
