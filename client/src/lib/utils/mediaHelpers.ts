import type { Data, ImageMediaData } from "@/types/types";

export const getImgUrl = (imageData: ImageMediaData) => {
  const baseUrl = "http://localhost:1337";
  const imgUrl = imageData.attributes.url;

  return baseUrl + imgUrl;
};

export const getImgAlt = (imageData: ImageMediaData) => {
  return imageData.attributes.alternativeText;
};

export const getImgName = (imageData: ImageMediaData) => {
  return imageData.attributes.name;
};
