while true 
do
	cat << MENU
	Menu

	C) Copy Files

	D) Delete Files

	R) Rename Files

	E) Exit
	 
MENU

echo 'Enter your choice:\c'
read choice

case $choice in
 		[cC]) echo "\nEnter the file name to be copied:\c"
		 	  read filename
			  echo "\nEnter the name of the destination file:\c"
			  read destination
			  cp -i $filename $destination
			  if [ $? -eq 1 ]
			  	then
				  sleep 5
			  else
			  	echo "File Copied Successfully"
				fi
				#   read ch
				# case $ch in 
				# [yY]) cp -i $filename $destination
				# 		
				# 		sleep 1
				# 		continue;;
						
				# [nN]) sleep 1
				# 		continue;;
			continue;;
		[dD]) echo 'Deleting File'
			sleep 1  	
			continue;;
		[rR]) echo 'Renaming'
			sleep 1
			continue;;
		[eE]) exit;;

		*) echo 'please select a valid option'
			sleep 2
esac
done