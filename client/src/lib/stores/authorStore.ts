import type { ImageMediaData } from "@/types/types";
import { writable } from "svelte/store";

export interface AuthorStore {
  Authors: Author[];
}

export interface Author {
  id: number;
  name: string;
  description: string;
  image: ImageMediaData;
}

const authorStore = () => {
  const { subscribe, set } = writable<AuthorStore>({ Authors: [] });
  return {
    subscribe,
    populate: (Authors: Author[]) => set({ Authors }),
  };
};

export const authors = authorStore();
