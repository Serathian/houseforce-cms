import { currentTheme } from "@/stores";
import constants, { type DomainConstants } from "./constants";
import { Pages } from "@/types/types";

export const updateCurrentTheme = (newtheme: Pages) => {
  let currentDomain: DomainConstants;
  let otherDomain: DomainConstants;

  switch (newtheme) {
    case Pages.Renovation:
      currentDomain = constants.renovation;
      otherDomain = constants.homecare;
      break;

    case Pages.Homecare:
      currentDomain = constants.homecare;
      otherDomain = constants.renovation;
      break;

    // Minor domains don't have a secondary.
    case Pages.AboutUs:
      currentDomain = constants.aboutus;
      break;

    case Pages.Search:
      currentDomain = constants.search;
      break;

    // Collection
    case Pages.Blogs:
      currentDomain = constants.blogs;
      break;

    case Pages.Articles:
      currentDomain = constants.articles;
      break;

    case Pages.Projects:
      currentDomain = constants.projects;
      break;

    case Pages.NotSet:
      break;

    default:
      currentDomain = constants.renovation;
      otherDomain = constants.homecare;
      break;
  }

  currentTheme.update(
    (t) =>
      (t = {
        currentDomain: currentDomain,
        otherDomain: otherDomain,
      }),
  );
};
