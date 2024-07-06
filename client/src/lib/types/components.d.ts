import type { Schema, Attribute } from "@strapi/strapi";

export interface BlocksHeaderBlock extends Schema.Component {
  collectionName: "components_blocks_header_blocks";
  info: {
    displayName: "Header Block";
    icon: "bold";
    description: "";
  };
  attributes: {
    Text: Attribute.String & Attribute.Required;
    DisplayOption: Attribute.Component<"options.display-options"> &
      Attribute.Required;
  };
}

export interface BlocksImageBlock extends Schema.Component {
  collectionName: "components_blocks_image_blocks";
  info: {
    displayName: "Image Block";
    icon: "expand";
    description: "";
  };
  attributes: {
    Media: Attribute.Media & Attribute.Required;
    DisplayOption: Attribute.Component<"options.display-options"> &
      Attribute.Required;
  };
}

export interface BlocksSeparatorBlock extends Schema.Component {
  collectionName: "components_blocks_separator_blocks";
  info: {
    displayName: "Separator Block";
    icon: "oneToOne";
    description: "";
  };
  attributes: {
    Title: Attribute.String;
    DisplayOption: Attribute.Component<"options.display-options"> &
      Attribute.Required;
  };
}

export interface BlocksTabBlock extends Schema.Component {
  collectionName: "components_blocks_tab_blocks";
  info: {
    displayName: "Tab Block";
    icon: "bulletList";
    description: "";
  };
  attributes: {
    Tabs: Attribute.Component<"components.tab", true>;
    DisplayOption: Attribute.Component<"options.display-options"> &
      Attribute.Required;
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
    DisplayOption: Attribute.Component<"options.display-options"> &
      Attribute.Required;
  };
}

export interface ComponentsTab extends Schema.Component {
  collectionName: "components_components_tabs";
  info: {
    displayName: "Tab";
    icon: "file";
    description: "";
  };
  attributes: {
    TabTitle: Attribute.String & Attribute.Required;
    ContentTitle: Attribute.String & Attribute.Required;
    Content: Attribute.Text & Attribute.Required;
    Icon: Attribute.Enumeration<["Heart", "Diamond", "HandShake"]> &
      Attribute.Required &
      Attribute.DefaultTo<"Heart">;
  };
}

export interface OptionsDisplayOptions extends Schema.Component {
  collectionName: "components_options_display_options";
  info: {
    displayName: "Display Options";
    icon: "expand";
    description: "";
  };
  attributes: {
    BlockSize: Attribute.Enumeration<
      ["Full", "Narrow", "Half", "One Third", "Two Thirds"]
    > &
      Attribute.Required &
      Attribute.DefaultTo<"Full">;
    BorderRadius: Attribute.Enumeration<["Full", "Medium", "Small", "None"]> &
      Attribute.Required &
      Attribute.DefaultTo<"None">;
    Border: Attribute.Boolean & Attribute.DefaultTo<false>;
  };
}

declare module "@strapi/types" {
  export module Shared {
    export interface Components {
      "blocks.header-block": BlocksHeaderBlock;
      "blocks.image-block": BlocksImageBlock;
      "blocks.separator-block": BlocksSeparatorBlock;
      "blocks.tab-block": BlocksTabBlock;
      "blocks.text-block": BlocksTextBlock;
      "components.tab": ComponentsTab;
      "options.display-options": OptionsDisplayOptions;
    }
  }
}
