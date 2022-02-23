while IFS=$'\t' read -r -a line
do
  echo "${myArray[2]}"
  openscad box.scad -D x=${line[1]} -D y=${line[2]} -D z=${line[3]} --camera=-700,1200,1200,0,0,0 --imgsize=512,348 --colorscheme Nature -o box_${line[0]}.png
done < data


