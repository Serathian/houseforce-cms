<script lang="ts">
  import * as Form from "$lib/components/ui/form";
  import { Input } from "$lib/components/ui/input";
  import Textarea from "../ui/textarea/textarea.svelte";
  import { contactSchema } from "./contactSchema";
  import { defaults, superForm } from "sveltekit-superforms";
  import { zod } from "sveltekit-superforms/adapters";

  export let submitSuccess: boolean;

  const form = superForm(defaults(zod(contactSchema)), {
    validators: zod(contactSchema),
    onResult({ result }) {
      if (result.status == 200) {
        submitSuccess = true;
      }
    },
  });

  const { form: formData, enhance } = form;
</script>

<form method="POST" action="/contact" use:enhance>
  <Form.Field {form} name="name">
    <Form.Control let:attrs>
      <Form.Label>Name*</Form.Label>
      <Input {...attrs} bind:value={$formData.name} />
    </Form.Control>
    <Form.FieldErrors />
  </Form.Field>
  <Form.Field {form} name="email">
    <Form.Control let:attrs>
      <Form.Label>Email*</Form.Label>
      <Input {...attrs} bind:value={$formData.email} />
    </Form.Control>
    <Form.FieldErrors />
  </Form.Field>
  <Form.Field {form} name="phone">
    <Form.Control let:attrs>
      <Form.Label>Phone Number</Form.Label>
      <Input {...attrs} bind:value={$formData.phone} />
    </Form.Control>
    <Form.FieldErrors />
  </Form.Field>
  <Form.Field {form} name="message">
    <Form.Control let:attrs>
      <Form.Label>Message*</Form.Label>
      <Textarea {...attrs} bind:value={$formData.message} />
    </Form.Control>
    <Form.FieldErrors />
  </Form.Field>
  <Form.Button class="text-white">Submit</Form.Button>
</form>
