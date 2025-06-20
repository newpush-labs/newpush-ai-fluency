#!/bin/bash

# Script to compile all LaTeX pamphlet files to PDFs
# Usage: ./scripts/compile_pamphlets.sh

# Remove set -e to continue processing even if individual files fail
# set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Get script directory and project root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Pamphlets directory
PAMPHLETS_DIR="$PROJECT_ROOT/course/hu/pamphlets"

echo -e "${BLUE}🔄 Compiling LaTeX pamphlets to PDFs...${NC}"
echo -e "${BLUE}📁 Pamphlets directory: $PAMPHLETS_DIR${NC}"
echo ""

# Check if pamphlets directory exists
if [ ! -d "$PAMPHLETS_DIR" ]; then
    echo -e "${RED}❌ Error: Pamphlets directory not found: $PAMPHLETS_DIR${NC}"
    exit 1
fi

# Change to pamphlets directory
cd "$PAMPHLETS_DIR"

# Counter for tracking progress
total_files=0
compiled_files=0
failed_files=0

# Count .tex files first
for tex_file in *.tex; do
    if [ -f "$tex_file" ]; then
        ((total_files++))
    fi
done

if [ $total_files -eq 0 ]; then
    echo -e "${YELLOW}⚠️  No .tex files found in $PAMPHLETS_DIR${NC}"
    exit 0
fi

echo -e "${BLUE}📊 Found $total_files .tex files to compile${NC}"
echo ""

# Compile each .tex file
for tex_file in *.tex; do
    if [ -f "$tex_file" ]; then
        echo -e "${YELLOW}🔧 Compiling: $tex_file${NC}"
        
        # Create a log file for this compilation
        log_file="${tex_file%.tex}.log"
        
        # Run pdflatex with non-interactive mode and capture output
        if pdflatex -interaction=nonstopmode -output-directory="$PAMPHLETS_DIR" "$tex_file" > "$log_file" 2>&1; then
            echo -e "${GREEN}✓ Successfully compiled: ${tex_file%.tex}.pdf${NC}"
            ((compiled_files++))
        else
            echo -e "${RED}✗ Failed to compile: $tex_file${NC}"
            echo -e "${RED}   Error details from log:${NC}"
            # Show the last 10 lines of error from the log
            tail -n 10 "$log_file" | sed 's/^/   /'
            echo -e "${YELLOW}   Full log saved to: $log_file${NC}"
            ((failed_files++))
        fi
        echo ""
    fi
done

echo -e "${BLUE}📈 Compilation Summary:${NC}"
echo -e "   Total files: $total_files"
echo -e "   ${GREEN}Successfully compiled: $compiled_files${NC}"
echo -e "   ${RED}Failed: $failed_files${NC}"
echo ""

# Clean up auxiliary files (optional)
echo -e "${YELLOW}🧹 Cleaning up auxiliary files...${NC}"
for ext in aux log out fdb_latexmk fls synctex.gz; do
    if ls *.$ext 1> /dev/null 2>&1; then
        rm -f *.$ext
        echo -e "   Removed .$ext files"
    fi
done

echo ""
if [ $compiled_files -eq $total_files ]; then
    echo -e "${GREEN}🎉 All pamphlets compiled successfully!${NC}"
    exit 0
else
    echo -e "${YELLOW}⚠️  Some pamphlets failed to compile. Check the .tex files for errors.${NC}"
    exit 1
fi