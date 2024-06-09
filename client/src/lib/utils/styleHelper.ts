export enum DisplayOption {
  Full = "Full",
  Narrow = "Narrow",
  Half = "Half",
  OneThird = "One Third",
  TwoThirds = "Two Thirds",
}

export const getDisplayOption = (displayOption: DisplayOption) => {
  console.log(displayOption);

  switch (displayOption) {
    case DisplayOption.Full:
      return "col-span-12";
    case DisplayOption.Half:
      return "col-span-12 md:col-span-6";
    case DisplayOption.Narrow:
      return "col-span-12 md:col-span-10 md:col-start-2";
    case DisplayOption.OneThird:
      return "col-span-12 md:col-span-4";
    case DisplayOption.TwoThirds:
      return "col-span-12 ms:col-span-8";
    default:
      return "no-ds";
  }
};

export enum ImageStyle {
  Square = "Square",
  Rounded = "Rounded",
  Circle = "Circle",
}

export const getImageStyle = (imageStyle: ImageStyle) => {
  switch (imageStyle) {
    case ImageStyle.Circle:
      return "rounded-full";
    case ImageStyle.Rounded:
      return "rounded-xl";
    case ImageStyle.Square:
      return "";
    default:
      return "no-ds";
  }
};
