export interface DomainConstants {
	domain: Domains;
	dataTheme: string;
	domainName: string;
	homeUrl: string;
	cmsEndpoint: string;
}

export interface CollectionDomain extends DomainConstants {
	collectionEnpoint: string;
	collectionFindOneEndpoint: string;
}

export enum Domains {
	NotSet = 'not-set',
	Renovation = 'renovation',
	Homecare = 'homecare',
	AboutUs = 'about-us',
	Articles = 'articles',
	Blogs = 'blogs',
	Projects = 'projects'
}

const fallbackDomain: DomainConstants = {
	domain: Domains.NotSet,
	dataTheme: 'other',
	domainName: 'other',
	homeUrl: '/',
	cmsEndpoint: '/'
};

// Single Types
const renovation: DomainConstants = {
	domain: Domains.Renovation,
	dataTheme: 'renovation',
	domainName: 'Renovation',
	homeUrl: '/renovation',
	cmsEndpoint: '/renovation'
};

const homecare: DomainConstants = {
	domain: Domains.Homecare,
	dataTheme: 'homecare',
	domainName: 'Homecare',
	homeUrl: '/homecare',
	cmsEndpoint: '/homecare'
};

const aboutus: DomainConstants = {
	domain: Domains.AboutUs,
	dataTheme: 'other',
	domainName: 'Excellence is a way of life',
	homeUrl: '/about-us',
	cmsEndpoint: '/about-us'
};

// Collection Types
const articles: CollectionDomain = {
	domain: Domains.Articles,
	dataTheme: 'other',
	domainName: 'Excellence is a way of life',
	homeUrl: '/articles',
	cmsEndpoint: '/article',
	collectionEnpoint: '/article-pages',
	collectionFindOneEndpoint: '/article-page'
};

const blogs: CollectionDomain = {
	domain: Domains.Blogs,
	dataTheme: 'other',
	domainName: 'Excellence is a way of life',
	homeUrl: '/blogs',
	cmsEndpoint: '/blog',
	collectionEnpoint: '/blog-pages',
	collectionFindOneEndpoint: '/blog-page'
};

const projects: CollectionDomain = {
	domain: Domains.Projects,
	dataTheme: 'other',
	domainName: 'Excellence is a way of life',
	homeUrl: '/projects',
	cmsEndpoint: '/project',
	collectionEnpoint: '/project-pages',
	collectionFindOneEndpoint: '/project-page'
};

export default {
	fallbackDomain,
	renovation,
	homecare,
	aboutus,
	articles,
	blogs,
	projects
};
