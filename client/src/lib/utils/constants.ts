export interface DomainConstants {
	dataTheme: string;
	domainName: string;
	homeUrl: string;
	cmsEndpoint: string;
}

export interface CollectionDomain extends DomainConstants {
	collectionEnpoint: string;
	collectionFindOneEndpoint: string;
}

export type Domains =
	| 'not-set'
	| 'renovation'
	| 'homecare'
	| 'about-us'
	| 'atricles'
	| 'blogs'
	| 'projects';

const fallbackDomain: DomainConstants = {
	dataTheme: 'not-set',
	domainName: 'not-set',
	homeUrl: '/',
	cmsEndpoint: '/'
};

// Single Types
const renovation: DomainConstants = {
	dataTheme: 'renovation',
	domainName: 'Renovation',
	homeUrl: '/renovation',
	cmsEndpoint: '/renovation'
};

const homecare: DomainConstants = {
	dataTheme: 'homecare',
	domainName: 'Homecare',
	homeUrl: '/homecare',
	cmsEndpoint: '/homecare'
};

const aboutus: DomainConstants = {
	dataTheme: 'other',
	domainName: 'Excellence is a way of life',
	homeUrl: '/about-us',
	cmsEndpoint: '/about-us'
};

// Collection Types
const articles: CollectionDomain = {
	dataTheme: 'other',
	domainName: 'Excellence is a way of life',
	homeUrl: '/articles',
	cmsEndpoint: '/article',
	collectionEnpoint: '/article-pages',
	collectionFindOneEndpoint: '/article-page'
};

const blogs: CollectionDomain = {
	dataTheme: 'other',
	domainName: 'Excellence is a way of life',
	homeUrl: '/blogs',
	cmsEndpoint: '/blog',
	collectionEnpoint: '/blog-pages',
	collectionFindOneEndpoint: '/blog-page'
};

const projects: CollectionDomain = {
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
