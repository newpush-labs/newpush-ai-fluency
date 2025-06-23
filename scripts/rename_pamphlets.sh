#!/bin/bash

# Navigate to the pamphlets directory
cd course/hu/pamphlets

echo "Renaming pamphlet files to meaningful names..."

# Rename files based on their content
mv "0178870bcc05e62ab4fd7191e6d52543e2dbc258.tex" "4d-leiras.tex"
mv "0e37fa9da01fab7a5478a2194d352027794c1b89.tex" "mi-gondossag.tex"
mv "334975cdec18f744b4fa511dc8518bd8d119d29d.tex" "mi-fluencia-keretrendszer.tex"
mv "34612aacbf37f6aa12140fc0a1aa216b63263aac.tex" "4d-gondossag.tex"
mv "4396730ed190e691a3712cf2fd6bfe35509deca2.tex" "mi-fluencia-kulcsfogalmak-csalolap.tex"
mv "470922b2df5bc274a529eb542295192488db49d0.tex" "4d-delegacio.tex"
mv "62df988c101af71291b06843b63d39bbd600bed8.tex" "6-technika-hatekony-prompttervezes.tex"
mv "735241c3b91699d1f4aa9422c081ae4eeefc2586.tex" "4d-delegacio-alt.tex"
mv "8216cbfffb3c07053f2a959868a89087949f4779.tex" "4d-leiras-alt.tex"
mv "97ccae9e659f590c192de721eff980ba7549535b.tex" "4d-gondossag-alt.tex"
mv "99c028dbb44fcc976b26588d98c676540f2aea38.tex" "4d-megkulonboztetes.tex"
mv "9b7dd41bd7919c70a506e4ec600a60d3268d1dfb.tex" "generativ-mi-megertese.tex"
mv "b383cf6baddbfc72fdf8b0ed533a518e2872d531.tex" "mi-fluencia-keretrendszer-reszletes.tex"
mv "d8ba4eda6eed65f193be549d49385006de8b7119.tex" "4d-megkulonboztetes-reszletes.tex"

echo "Renaming corresponding PDF files..."

# Rename PDF files if they exist
for old_name in "0178870bcc05e62ab4fd7191e6d52543e2dbc258" "0e37fa9da01fab7a5478a2194d352027794c1b89" "334975cdec18f744b4fa511dc8518bd8d119d29d" "34612aacbf37f6aa12140fc0a1aa216b63263aac" "4396730ed190e691a3712cf2fd6bfe35509deca2" "470922b2df5bc274a529eb542295192488db49d0" "62df988c101af71291b06843b63d39bbd600bed8" "735241c3b91699d1f4aa9422c081ae4eeefc2586" "8216cbfffb3c07053f2a959868a89087949f4779" "97ccae9e659f590c192de721eff980ba7549535b" "99c028dbb44fcc976b26588d98c676540f2aea38" "9b7dd41bd7919c70a506e4ec600a60d3268d1dfb" "b383cf6baddbfc72fdf8b0ed533a518e2872d531" "d8ba4eda6eed65f193be549d49385006de8b7119"; do
    if [ -f "${old_name}.pdf" ]; then
        case $old_name in
            "0178870bcc05e62ab4fd7191e6d52543e2dbc258") mv "${old_name}.pdf" "4d-leiras.pdf" ;;
            "0e37fa9da01fab7a5478a2194d352027794c1b89") mv "${old_name}.pdf" "mi-gondossag.pdf" ;;
            "334975cdec18f744b4fa511dc8518bd8d119d29d") mv "${old_name}.pdf" "mi-fluencia-keretrendszer.pdf" ;;
            "34612aacbf37f6aa12140fc0a1aa216b63263aac") mv "${old_name}.pdf" "4d-gondossag.pdf" ;;
            "4396730ed190e691a3712cf2fd6bfe35509deca2") mv "${old_name}.pdf" "mi-fluencia-kulcsfogalmak-csalolap.pdf" ;;
            "470922b2df5bc274a529eb542295192488db49d0") mv "${old_name}.pdf" "4d-delegacio.pdf" ;;
            "62df988c101af71291b06843b63d39bbd600bed8") mv "${old_name}.pdf" "6-technika-hatekony-prompttervezes.pdf" ;;
            "735241c3b91699d1f4aa9422c081ae4eeefc2586") mv "${old_name}.pdf" "4d-delegacio-alt.pdf" ;;
            "8216cbfffb3c07053f2a959868a89087949f4779") mv "${old_name}.pdf" "4d-leiras-alt.pdf" ;;
            "97ccae9e659f590c192de721eff980ba7549535b") mv "${old_name}.pdf" "4d-gondossag-alt.pdf" ;;
            "99c028dbb44fcc976b26588d98c676540f2aea38") mv "${old_name}.pdf" "4d-megkulonboztetes.pdf" ;;
            "9b7dd41bd7919c70a506e4ec600a60d3268d1dfb") mv "${old_name}.pdf" "generativ-mi-megertese.pdf" ;;
            "b383cf6baddbfc72fdf8b0ed533a518e2872d531") mv "${old_name}.pdf" "mi-fluencia-keretrendszer-reszletes.pdf" ;;
            "d8ba4eda6eed65f193be549d49385006de8b7119") mv "${old_name}.pdf" "4d-megkulonboztetes-reszletes.pdf" ;;
        esac
    fi
done

echo "File renaming completed!"
ls -la *.tex *.pdf 2>/dev/null | head -20