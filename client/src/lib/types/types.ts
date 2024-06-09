export enum Domain {
	Renovation,
	Homecare,
	AboutUs,
	Blogs,
	Articles,
	Projects,
	NotSet
}

export type CardData = {
	attributes: CardDataAttributes;
	id: number;
};

export type CardDataAttributes = {
	Title: string;
	Description: string;
	ImageUrl: string;
	createdAt: Date;
};

// TODO: Convert this to mirror what strapi provides
export type StrapiImage = {
	alternativeText: string;
	name: string;
};
