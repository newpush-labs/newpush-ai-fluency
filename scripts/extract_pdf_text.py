"""
This script extracts text from PDF files located in a specified directory and saves the extracted text to .txt files in a new directory.

This script requires the 'pdfplumber' library. To install it, run the following command:
pip install pdfplumber
"""

import os
import pdfplumber

def extract_text_from_pdfs(pdf_dir, output_dir):
    """
    Extracts text from all PDF files in a directory and saves it to .txt files.

    Args:
        pdf_dir (str): The path to the directory containing the PDF files.
        output_dir (str): The path to the directory where the .txt files will be saved.
    """
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    for filename in os.listdir(pdf_dir):
        if filename.endswith(".pdf"):
            pdf_path = os.path.join(pdf_dir, filename)
            output_filename = os.path.splitext(filename)[0] + ".txt"
            output_path = os.path.join(output_dir, output_filename)

            try:
                with pdfplumber.open(pdf_path) as pdf:
                    text = ""
                    for page in pdf.pages:
                        page_text = page.extract_text()
                        if page_text:
                            text += page_text + "\n"
                    
                    with open(output_path, "w", encoding="utf-8") as f:
                        f.write(text)
                
                print(f"Extracted text from '{filename}' to '{output_filename}'")

            except Exception as e:
                print(f"Could not process {filename}: {e}")

if __name__ == "__main__":
    # The script is located in the 'scripts' directory, so we need to go up one level to get to the project root.
    project_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    
    pdf_directory = os.path.join(project_root, "course", "en", "phamflets")
    output_directory = os.path.join(project_root, "course", "en", "phamflets", "text")
    
    extract_text_from_pdfs(pdf_directory, output_directory)