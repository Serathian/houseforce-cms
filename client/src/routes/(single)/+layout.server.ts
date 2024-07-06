import { contactSchema } from "@/components/contact/contactSchema";
import { superValidate } from "sveltekit-superforms";
import { zod } from "sveltekit-superforms/adapters";
import type { PageServerLoad } from "./about-us/$types";

export const load: PageServerLoad = async () => {
  return {
    form: await superValidate(zod(contactSchema)),
  };
};
