import { writable } from "svelte/store";

export interface FacetStore {
  Tags: Tag[];
  Categories: Category[];
}

export interface Tag {
  id: number;
  name: string;
}

export interface Category {
  id: number;
  name: string;
  color: string;
}

const facetStore = () => {
  const { subscribe, set } = writable<FacetStore>({ Tags: [], Categories: [] });
  return {
    subscribe,
    populate: (Tags: Tag[], Categories: Category[]) =>
      set({ Tags, Categories }),
  };
};

export const facets = facetStore();
