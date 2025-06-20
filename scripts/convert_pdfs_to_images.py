"""
This script converts PDF files to a series of images, one for each page.

This script requires the 'pdf2image' library and its dependency, 'poppler'.
To install them, follow these steps:

1. Install 'poppler':
   - On macOS (using Homebrew): brew install poppler
   - On Debian/Ubuntu: sudo apt-get install poppler-utils
   - On Windows: Download the latest binary from https://github.com/oschwartz10612/poppler-windows/releases/

2. Install 'pdf2image':
   pip install pdf2image
"""

import os
from pdf2image import convert_from_path

def convert_pdfs_to_images(pdf_dir, output_dir):
    """
    Converts all PDF files in a directory to images, page by page.

    Args:
        pdf_dir (str): The path to the directory containing the PDF files.
        output_dir (str): The path to the directory where the image folders will be saved.
    """
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    for filename in os.listdir(pdf_dir):
        if filename.endswith(".pdf"):
            pdf_path = os.path.join(pdf_dir, filename)
            
            # Create a subdirectory for each PDF's images
            pdf_name = os.path.splitext(filename)[0]
            image_subdir = os.path.join(output_dir, pdf_name)
            if not os.path.exists(image_subdir):
                os.makedirs(image_subdir)

            try:
                # Convert PDF to a list of images
                images = convert_from_path(pdf_path, 300)  # 300 DPI for high quality

                for i, image in enumerate(images):
                    image_filename = f"page_{i + 1}.png"
                    image_path = os.path.join(image_subdir, image_filename)
                    image.save(image_path, "PNG")
                
                print(f"Converted '{filename}' to images in '{image_subdir}'")

            except Exception as e:
                print(f"Could not process {filename}: {e}")

if __name__ == "__main__":
    # The script is located in the 'scripts' directory, so we need to go up one level to get to the project root.
    project_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    
    pdf_directory = os.path.join(project_root, "course", "en", "phamflets")
    output_directory = os.path.join(project_root, "course", "en", "phamflets", "images")
    
    convert_pdfs_to_images(pdf_directory, output_directory)