import { writable } from 'svelte/store';
import type { DomainConstants } from './utils/constants';
import constants from './utils/constants';

// Tailwind theme control
export type CurrentTheme = {
	currentDomain: DomainConstants;
	otherDomain: DomainConstants;
	heroText: string;
};

export const currentTheme = writable<CurrentTheme>({
	currentDomain: constants.fallbackDomain,
	otherDomain: constants.fallbackDomain,
	heroText: 'not-set'
});

// Navigation Content
export const navigationContent = writable<string>('not-set');

// Single type hero content
export const heroContent = writable<string>('not-set');
