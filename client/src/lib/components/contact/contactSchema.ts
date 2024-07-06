import { z } from "zod";

export const contactSchema = z.object({
  name: z
    .string()
    .min(2, "Name must be minimum of 2 characters")
    .max(50, "Name must be maximum of 50 characters"),
  email: z.string().email("Email is required"),
  phone: z.string(),
  message: z
    .string()
    .min(20, "Message must be between 20 and 250 characters")
    .max(250, "Message must be between 20 and 250 characters"),
});

contactSchema.required({
  name: true,
  email: true,
  message: true,
});

export type FormSchema = typeof contactSchema;
