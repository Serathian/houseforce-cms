import { PUBLIC_CMS_BASE_URL } from "$env/static/public";
import type { Author } from "$lib/stores/authorStore";

export const getAuthors = async (fetcher: typeof fetch = fetch) => {
  const authorsData = await get(fetcher);
  const authors: Author[] = authorsData.data.map((author) => {
    return {
      id: author.id,
      name: author.attributes.Name,
      description: author.attributes.Description,
      image: author.attributes.Image.data[0],
    };
  });
  return { Authors: authors };
};

const get = async (fetcher: typeof fetch = fetch) => {
  async function getData() {
    const res = await fetcher(
      PUBLIC_CMS_BASE_URL + "/api/authors" + "?" + "populate=*",
    );

    if (!res.ok) {
      // This will activate the closest `error.js` Error Boundary
      throw new Error("Failed to fetch data", { cause: res });
    }
    return res.json();
  }

  return await getData();
};
