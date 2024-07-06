import type { Attribute } from "@strapi/strapi";

export enum Pages {
  Renovation,
  Homecare,
  AboutUs,
  Search,
  Blogs,
  Articles,
  Projects,
  NotSet,
}

export type CardData<T> = {
  attributes: T;
  id: number;
};

export interface CardDataAttributes {
  Title: string;
  Description: string;
  MainImage: Attribute.Media<"images", false>;
  createdAt: Date;
}

export interface Data<T> {
  data: T;
}

// Own implemenation of Strapi mdia interface
export interface ImageMediaData {
    id: number;
  attributes: {
    name: string;
    alternativeText: string;
    caption?: string;
    width?: number;
    height?: number;
    formats?: Record<string, IFile>;
    hash: string;
    ext?: string;
    mime: "image/jpeg";
    size: 1859.5;
    url: "/uploads/DSC_9609_329132be87.jpg";
    previewUrl: null;
    provider: "local";
    provider_metadata: null;
  };
}

export interface Attributes extends IFile {
  createdAt: string;
  updatedAt: string;
}

export interface IFile {
  id: number;
  name: string;
  alternativeText?: string;
  caption?: string;
  width?: number;
  height?: number;
  formats?: Record<string, IFile>;
  hash: string;
  ext?: string;
  mime: string;
  size: number;
  url: string;
  previewUrl?: string;
  path?: string;
  provider?: string;
  provider_metadata?: Record<string, unknown>;
  type?: string;
  mainHash?: string;
}
