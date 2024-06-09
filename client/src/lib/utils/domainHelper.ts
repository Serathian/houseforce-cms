import { currentTheme } from '@/stores';
import constants, { type DomainConstants } from './constants';
import { Domain } from '@/types/types';

export const updateCurrentTheme = (newtheme: Domain, heroText: string) => {
	let currentDomain: DomainConstants;
	let otherDomain: DomainConstants;

	switch (newtheme) {
		case Domain.Renovation:
			currentDomain = constants.renovation;
			otherDomain = constants.homecare;
			break;

		case Domain.Homecare:
			currentDomain = constants.homecare;
			otherDomain = constants.renovation;
			break;

		// Minor domains don't have a secondary.
		case Domain.AboutUs:
			currentDomain = constants.aboutus;
			break;

		case Domain.Blogs:
			currentDomain = constants.blogs;
			break;

		case Domain.Articles:
			currentDomain = constants.articles;
			break;

		case Domain.NotSet:
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
				heroText
			})
	);
};
