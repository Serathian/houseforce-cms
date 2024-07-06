export interface DisplayOption {
  BlockSize: SizeOption;
  BorderRadius: RadiusOption;
  Border: boolean;
}

export const getDisplayOption = (displayOption: DisplayOption) => {
  return (
    getGridCss(displayOption.BlockSize) +
    getRadiusCss(displayOption.BorderRadius) +
    getBorderCss(displayOption.Border)
  );
};

export enum SizeOption {
  Full = "Full",
  Narrow = "Narrow",
  Half = "Half",
  OneThird = "One Third",
  TwoThirds = "Two Thirds",
}

const getGridCss = (blockSize: SizeOption) => {
  switch (blockSize) {
    case SizeOption.Full:
      return "col-span-12 ";
    case SizeOption.Half:
      return "col-span-12 md:col-span-6 ";
    case SizeOption.Narrow:
      return "col-span-12 md:col-span-10 md:col-start-2 ";
    case SizeOption.OneThird:
      return "col-span-12 md:col-span-4 ";
    case SizeOption.TwoThirds:
      return "col-span-12 md:col-span-8 ";
    default:
      return "no-ds ";
  }
};

export enum RadiusOption {
  Full = "Full",
  Medium = "Medium",
  Small = "Small",
  None = "None",
}

const getRadiusCss = (radiusOption: RadiusOption) => {
  switch (radiusOption) {
    case RadiusOption.Full:
      return "rounded-full ";
    case RadiusOption.Medium:
      return "rounded-xl ";
    case RadiusOption.Small:
      return "rounded-md ";
    case RadiusOption.None:
      return "";
    default:
      return "no-ro ";
  }
};

const getBorderCss = (hasBorder: boolean) => {
  return hasBorder ? "border " : "";
};
