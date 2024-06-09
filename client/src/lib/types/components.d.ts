import type { Schema, Attribute } from "@strapi/strapi";

export interface BlocksImageBlock extends Schema.Component {
  collectionName: "components_blocks_image_blocks";
  info: {
    displayName: "Image Block";
    icon: "expand";
    description: "";
  };
  attributes: {
    Media: Attribute.Media & Attribute.Required;
    DisplayOption: Attribute.Enumeration<
      ["Full", "Narrow", "Half", "One Third", "Two Thirds"]
    > &
      Attribute.Required &
      Attribute.DefaultTo<"Full">;
    Style: Attribute.Enumeration<["Square", "Rounded", "Circle"]> &
      Attribute.Required &
      Attribute.DefaultTo<"Square">;
  };
}

export interface BlocksTextBlock extends Schema.Component {
  collectionName: "components_blocks_text_blocks";
  info: {
    displayName: "Text Block";
    icon: "filter";
    description: "";
  };
  attributes: {
    Text: Attribute.Blocks & Attribute.Required;
    DisplayOption: Attribute.Enumeration<
      ["Full", "Narrow", "Half", "One Third", "Two Thirds"]
    > &
      Attribute.Required &
      Attribute.DefaultTo<"Full">;
  };
}

declare module "@strapi/types" {
  export module Shared {
    export interface Components {
      "blocks.image-block": BlocksImageBlock;
      "blocks.text-block": BlocksTextBlock;
    }
  }
}
