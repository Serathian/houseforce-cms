import type { APIResponse } from "@/types/strapi";
import { Pages } from "@/types/types";
import constants from "@/utils/constants";
import type { Common } from "@strapi/strapi";
//import { stringify } from "qs";
import { env } from "$env/dynamic/public";

const { PUBLIC_CMS_BASE_URL } = env;

export const LoadSingleType = async (domain: Pages) => {
  switch (domain) {
    case Pages.Homecare:
      return await GetSingleType<APIResponse<"api::homecare.homecare">>(
        constants.homecare.cmsEndpoint,
      );
    case Pages.Renovation:
      return await GetSingleType<APIResponse<"api::renovation.renovation">>(
        constants.renovation.cmsEndpoint,
      );
    case Pages.AboutUs:
      return await GetSingleType<APIResponse<"api::about-us.about-us">>(
        constants.aboutus.cmsEndpoint,
      );
    case (Pages.Articles, Pages.Blogs, Pages.Projects):
      throw new Error("something went wrongs");
    default:
      throw new Error("something went wrongs");
  }
};

export const GetSingleType = async <
  Type extends APIResponse<Common.UID.ContentType>,
>(
  path: string,
) => {
  //const query = stringify({ populate: "*" });
  async function getData() {
    const res = await fetch(
      PUBLIC_CMS_BASE_URL + path + "?" + "populate[ContentArea][populate]=*",
    );

    if (!res.ok) {
      // This will activate the closest `error.js` Error Boundary
      throw new Error("Failed to fetch data", { cause: res });
    }

    return res.json();
  }

  return (await getData()) as Type;
};
