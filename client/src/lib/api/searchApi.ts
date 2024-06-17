import { PUBLIC_SEARCH_BASE_URL } from "$env/static/public";

export const Search = async (query: string) => {
  const url = PUBLIC_SEARCH_BASE_URL + "/indexes/content/search";

  const response = await fetch(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      q: query,
    }),
  });

  if (!response.ok) {
    throw new Error("Error in search");
  }
  return response.json();
};
