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
  cmsEndpoint: "/api/renovation",
  pageType: PageType.Main,
};

const homecare: DomainConstants = {
  domain: Domains.Homecare,
  dataTheme: "homecare",
  domainName: "Homecare",
  homeUrl: "/homecare",
  cmsEndpoint: "/api/homecare",
  pageType: PageType.Main,
};

// Minor Pages
const aboutus: DomainConstants = {
  domain: Domains.AboutUs,
  dataTheme: "other",
  domainName: "Excellence is a way of life",
  homeUrl: "/about-us",
  cmsEndpoint: "/api/about-us",
  pageType: PageType.Minor,
};

const search: DomainConstants = {
  domain: Domains.AboutUs,
  dataTheme: "other",
  domainName: "Excellence is a way of life",
  homeUrl: "/search",
  cmsEndpoint: "/api/search",
  pageType: PageType.Minor,
};

// Collection Pages
const articles: CollectionDomain = {
  domain: Domains.Articles,
  dataTheme: "other",
  domainName: "Excellence is a way of life",
  homeUrl: "/articles",
  cmsEndpoint: "/api/article",
  collectionEnpoint: "/api/article-pages",
  collectionFindOneEndpoint: "/api/article-page",
  pageType: PageType.Collection,
};

const blogs: CollectionDomain = {
  domain: Domains.Blogs,
  dataTheme: "other",
  domainName: "Excellence is a way of life",
  homeUrl: "/blogs",
  cmsEndpoint: "/api/blog",
  collectionEnpoint: "/api/blog-pages",
  collectionFindOneEndpoint: "/api/blog-page",
  pageType: PageType.Collection,
};

const projects: CollectionDomain = {
  domain: Domains.Projects,
  dataTheme: "other",
  domainName: "Excellence is a way of life",
  homeUrl: "/projects",
  cmsEndpoint: "/api/project",
  collectionEnpoint: "/api/project-pages",
  collectionFindOneEndpoint: "/api/project-page",
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
