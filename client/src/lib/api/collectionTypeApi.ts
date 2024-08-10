import type {
  APIResponse,
  APIResponseCollection,
  APIResponseData,
} from "@/types/strapi";
import { Pages } from "@/types/types";
import constants from "@/utils/constants";
import type { Common } from "@strapi/strapi";
import qs from "qs";
import { GetSingleType } from "./singleTypeApi";
import { env } from "$env/dynamic/public";
import { Search, type MeilisearchResult, type SearchResult } from "./searchApi";

const { PUBLIC_CMS_BASE_URL } = env;

export const LoadCollectionType = async (
  domain: Pages,
  fetcher: typeof fetch = fetch,
) => {
  let pageData: APIResponse<Common.UID.ContentType>;
  let collectionData: MeilisearchResult<SearchResult>;

  switch (domain) {
    case Pages.Articles:
      pageData = await GetSingleType<APIResponse<"api::article.article">>(
        constants.articles.cmsEndpoint,
      );
      collectionData = await Search(Pages.Articles, fetcher);
      break;
    case Pages.Blogs:
      pageData = await GetSingleType<APIResponse<"api::blog.blog">>(
        constants.blogs.cmsEndpoint,
      );
      collectionData = await Search(Pages.Blogs, fetcher);
      break;
    case Pages.Projects:
      pageData = await GetSingleType<APIResponse<"api::project.project">>(
        constants.projects.cmsEndpoint,
      );
      collectionData = await Search(Pages.Projects, fetcher);
      break;
    case (Pages.Homecare, Pages.Renovation, Pages.AboutUs):
      throw new Error("something went wrongs");
    default:
      throw new Error("something went wrongs");
  }

  return { pageData, collectionData };
};

// TODO: Load first X Amount of collection types
export const GetCollectionType = async <
  Type extends APIResponseCollection<Common.UID.ContentType>,
>(
  path: string,
) => {
  const query = qs.stringify({ populate: "*" });

  async function getData() {
    const res = await fetch(PUBLIC_CMS_BASE_URL + path + "?" + query);

    if (!res.ok) {
      // This will activate the closest `error.js` Error Boundary
      throw new Error("Failed to fetch data");
    }

    return res.json();
  }

  return (await getData()) as Type;
};

export const LoadCollectionItem = async (domain: Pages, slug: string) => {
  switch (domain) {
    case Pages.Articles:
      return await GetCollectionItem<
        APIResponseData<"api::article-page.article-page">
      >(constants.articles.collectionEnpoint + "/" + slug);
    case Pages.Blogs:
      return await GetCollectionItem<
        APIResponseData<"api::blog-page.blog-page">
      >(constants.blogs.collectionEnpoint + "/" + slug);
    case Pages.Projects:
      return await GetCollectionItem<
        APIResponseData<"api::project-page.project-page">
      >(constants.projects.collectionEnpoint + "/" + slug);
    default:
      throw new Error("something went wrongs");
  }
};

export const GetCollectionItem = async <
  Type extends APIResponseData<Common.UID.ContentType>,
>(
  path: string,
) => {
  const query = qs.stringify({
    "populate[0]": "MainImage",
    "populate[1]": "ContentArea.DisplayOption",
  });

  async function getData() {
    const res = await fetch(PUBLIC_CMS_BASE_URL + path + "?" + query);

    if (!res.ok) {
      // This will activate the closest `error.js` Error Boundary
      throw new Error("Failed to fetch data");
    }
    return res.json();
  }

  return (await getData()) as Type;
};
