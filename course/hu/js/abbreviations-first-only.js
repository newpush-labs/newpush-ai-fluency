document.addEventListener('DOMContentLoaded', function() {
    // Track which abbreviations have already been encountered
    const seenAbbreviations = new Set();
    
    // Get all abbreviation elements on the page
    const abbrs = document.querySelectorAll('abbr[title]');
    
    abbrs.forEach(function(abbr) {
        const text = abbr.textContent.trim();
        
        // If we've already seen this abbreviation text, remove its styling and tooltip
        if (seenAbbreviations.has(text)) {
            // Remove the title attribute to disable tooltip
            abbr.removeAttribute('title');
            
            // Add a class to style it as plain text
            abbr.classList.add('abbr-subsequent');
            
            // Remove cursor help styling
            abbr.style.cursor = 'default';
            abbr.style.textDecoration = 'none';
            abbr.style.borderBottom = 'none';
            abbr.style.color = 'inherit';
            abbr.style.fontWeight = 'inherit';
        } else {
            // Mark this abbreviation as seen
            seenAbbreviations.add(text);
            
            // Add a class to identify it as the first occurrence
            abbr.classList.add('abbr-first');
        }
    });
});