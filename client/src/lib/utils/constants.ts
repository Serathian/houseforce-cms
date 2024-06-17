export enum PageType {
  Collection,
  CollectionItem,
  Main,
  Minor,
}

export interface DomainConstants {
  domain: Domains;
  dataTheme: string;
  domainName: string;
  homeUrl: string;
  cmsEndpoint: string;
  pageType: PageType;
}

export interface CollectionDomain extends DomainConstants {
  collectionEnpoint: string;
  collectionFindOneEndpoint: string;
}

export enum Domains {
  NotSet = "not-set",
  Renovation = "renovation",
  Homecare = "homecare",
  AboutUs = "about-us",
  Articles = "articles",
  Blogs = "blogs",
  Projects = "projects",
}

const fallbackDomain: DomainConstants = {
  domain: Domains.NotSet,
  dataTheme: "other",
  domainName: "other",
  homeUrl: "/",
  cmsEndpoint: "/",
  pageType: PageType.Main,
};

// Main Pages
const renovation: DomainConstants = {
  domain: Domains.Renovation,
  dataTheme: "renovation",
  domainName: "Renovation",
  homeUrl: "/renovation",
  cmsEndpoint: "/renovation",
  pageType: PageType.Main,
};

const homecare: DomainConstants = {
  domain: Domains.Homecare,
  dataTheme: "homecare",
  domainName: "Homecare",
  homeUrl: "/homecare",
  cmsEndpoint: "/homecare",
  pageType: PageType.Main,
};

// Minor Pages
const aboutus: DomainConstants = {
  domain: Domains.AboutUs,
  dataTheme: "other",
  domainName: "Excellence is a way of life",
  homeUrl: "/about-us",
  cmsEndpoint: "/about-us",
  pageType: PageType.Minor,
};

const search: DomainConstants = {
  domain: Domains.AboutUs,
  dataTheme: "other",
  domainName: "Excellence is a way of life",
  homeUrl: "/search",
  cmsEndpoint: "/search",
  pageType: PageType.Minor,
};

// Collection Pages
const articles: CollectionDomain = {
  domain: Domains.Articles,
  dataTheme: "other",
  domainName: "Excellence is a way of life",
  homeUrl: "/articles",
  cmsEndpoint: "/article",
  collectionEnpoint: "/article-pages",
  collectionFindOneEndpoint: "/article-page",
  pageType: PageType.Collection,
};

const blogs: CollectionDomain = {
  domain: Domains.Blogs,
  dataTheme: "other",
  domainName: "Excellence is a way of life",
  homeUrl: "/blogs",
  cmsEndpoint: "/blog",
  collectionEnpoint: "/blog-pages",
  collectionFindOneEndpoint: "/blog-page",
  pageType: PageType.Collection,
};

const projects: CollectionDomain = {
  domain: Domains.Projects,
  dataTheme: "other",
  domainName: "Excellence is a way of life",
  homeUrl: "/projects",
  cmsEndpoint: "/project",
  collectionEnpoint: "/project-pages",
  collectionFindOneEndpoint: "/project-page",
  pageType: PageType.Collection,
};

export default {
  fallbackDomain,
  renovation,
  homecare,
  aboutus,
  search,
  articles,
  blogs,
  projects,
};
