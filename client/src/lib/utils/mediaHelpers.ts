import type { Data, ImageMediaData } from "@/types/types";

export const getImgUrl = (imageData: ImageMediaData) => {
  const imgUrl = imageData.attributes.url;
  return getImgUrlString(imgUrl);
};

export const getImgUrlString = (imageUrl: string) => {
  const baseUrl = "http://localhost:1337";
  return baseUrl + imageUrl;
};

export const getImgAlt = (imageData: ImageMediaData) => {
  return imageData.attributes.alternativeText;
};

export const getImgName = (imageData: ImageMediaData) => {
  return imageData.attributes.name;
};
