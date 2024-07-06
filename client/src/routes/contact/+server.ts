import { contactSchema } from "@/components/contact/contactSchema";
import { actionResult, superValidate } from "sveltekit-superforms";
import { zod } from "sveltekit-superforms/adapters";

export const POST = async (event) => {
  const form = await superValidate(event, zod(contactSchema));
  if (!form.valid) {
    return actionResult("failure", { form }, 400);
  }
  return actionResult("success", { form }, 200);
};
