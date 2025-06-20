#!/usr/bin/env python3
"""
Pamphlet Translation Analysis Script

This script analyzes the pamphlet translation status between English PDFs
and Hungarian .tex files, identifies missing translations, and provides
a summary report.
"""

import os
import glob
from pathlib import Path

def analyze_pamphlet_translation_status():
    """Analyze translation status and generate report."""
    
    # Get English PDF files
    en_pdfs = glob.glob("course/en/pamphlets/*.pdf")
    en_ids = [Path(pdf).stem for pdf in en_pdfs]
    
    # Get Hungarian .tex files  
    hu_tex_files = glob.glob("course/hu/pamphlets/*.tex")
    hu_ids = [Path(tex).stem for tex in hu_tex_files]
    
    # Get Hungarian text files
    hu_text_files = glob.glob("course/hu/pamphlets/text/*.txt")
    hu_text_ids = [Path(txt).stem for txt in hu_text_files]
    
    # Find missing translations
    missing_tex = set(en_ids) - set(hu_ids)
    
    # Check if text files exist for missing .tex files
    missing_tex_with_text = []
    missing_tex_without_text = []
    
    for missing_id in missing_tex:
        if missing_id in hu_text_ids:
            missing_tex_with_text.append(missing_id)
        else:
            missing_tex_without_text.append(missing_id)
    
    # Generate report
    print("=" * 60)
    print("PAMPHLET TRANSLATION STATUS ANALYSIS")
    print("=" * 60)
    print(f"Total English PDFs: {len(en_ids)}")
    print(f"Total Hungarian .tex files: {len(hu_ids)}")
    print(f"Total Hungarian text files: {len(hu_text_ids)}")
    print()
    
    print("MISSING .TEX FILES:")
    print("-" * 30)
    if missing_tex_with_text:
        print("✓ Missing .tex files WITH available Hungarian text:")
        for i, missing_id in enumerate(missing_tex_with_text, 1):
            print(f"  {i}. {missing_id}")
            # Try to read first line of text file for context
            try:
                with open(f"course/hu/pamphlets/text/{missing_id}.txt", 'r', encoding='utf-8') as f:
                    first_lines = f.read().strip().split('\n')[:3]
                    title = " ".join(first_lines).replace('\n', ' ')[:80] + "..."
                    print(f"     Title: {title}")
            except:
                print(f"     (Could not read title)")
        print()
    
    if missing_tex_without_text:
        print("✗ Missing .tex files WITHOUT Hungarian text:")
        for missing_id in missing_tex_without_text:
            print(f"  - {missing_id}")
        print()
    
    if not missing_tex:
        print("✓ All English PDFs have corresponding Hungarian .tex files!")
    
    print("SUMMARY:")
    print("-" * 30)
    print(f"Ready to create .tex files: {len(missing_tex_with_text)}")
    print(f"Need text translation first: {len(missing_tex_without_text)}")
    print()
    
    return missing_tex_with_text, missing_tex_without_text

if __name__ == "__main__":
    missing_with_text, missing_without_text = analyze_pamphlet_translation_status()