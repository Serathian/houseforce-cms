const fs = require("fs");
const path = require("path");

function copySchemaToTSFiles() {
  // Define the source directory
  const sourceDir = path.join(process.cwd(), "types", "generated");

  // Define the destination directory
  const destinationDir = path.join(
    process.cwd(),
    "..",
    "houseforce-retail-client",
    "src",
    "lib",
    "types",
  );
  console.log(destinationDir);
  try {
    // Ensure the source directory exists
    if (!fs.existsSync(sourceDir)) {
      throw new Error("Source directory not found.");
    }

    // Ensure the destination directory exists
    if (!fs.existsSync(destinationDir)) {
      throw new Error("Destination directory not found.");
    }

    // Recursively copy files from source to destination
    copyFilesRecursively(sourceDir, destinationDir);

    console.log(
      "Schema-to-TS files copied successfully to 'client' directory.",
    );
  } catch (err) {
    console.error("An error occurred:", err);
  }
}

function copyFilesRecursively(source, destination) {
  // Get all files and directories in the source directory
  const files = fs.readdirSync(source);

  // Iterate through each item
  files.forEach((item) => {
    const sourcePath = path.join(source, item);
    const destinationPath = path.join(destination, item);

    // Check if the item is a directory
    if (fs.statSync(sourcePath).isDirectory()) {
      // If it's a directory, create it in the destination and copy its contents
      fs.mkdirSync(destinationPath, { recursive: true });
      copyFilesRecursively(sourcePath, destinationPath);
    } else {
      // If it's a file, copy it to the destination
      fs.copyFileSync(sourcePath, destinationPath);
    }
  });
}

copySchemaToTSFiles();
