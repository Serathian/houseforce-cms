import { PUBLIC_CMS_BASE_URL } from "$env/static/public";
import type { Tag, Category } from "$lib/stores/facetStore";

export const getFacets = async (fetcher: typeof fetch = fetch) => {
  const tagsData = await getTags(fetcher);
  const categoriesData = await getCategories(fetcher);

  const tags: Tag[] = tagsData.data.map((tag) => {
    return {
      id: tag.id,
      name: tag.attributes.Name,
    };
  });

  const categories: Category[] = categoriesData.data.map((category) => {
    return {
      id: category.id,
      name: category.attributes.Name,
      color: category.attributes.Color,
    };
  });

  return { Tags: tags, Categories: categories };
};

const getTags = async (fetcher: typeof fetch = fetch) => {
  async function getData() {
    const res = await fetcher(
      PUBLIC_CMS_BASE_URL + "/api/tags" + "?" + "populate=*",
    );

    if (!res.ok) {
      // This will activate the closest `error.js` Error Boundary
      throw new Error("Failed to fetch data", { cause: res });
    }

    return res.json();
  }

  return await getData();
};

const getCategories = async (fetcher: typeof fetch = fetch) => {
  async function getData() {
    const res = await fetcher(
      PUBLIC_CMS_BASE_URL + "/api/categories" + "?" + "populate=*",
    );

    if (!res.ok) {
      // This will activate the closest `error.js` Error Boundary
      throw new Error("Failed to fetch data", { cause: res });
    }

    return res.json();
  }

  return await getData();
};
