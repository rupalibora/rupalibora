#BOOK="addr.txt"

        exit=0
	echo -n "Enter Book name to create/open:"
	read BOOK
	touch $BOOK
        while [ $exit -ne 1 ]
        do
            echo "What operation do you want?"
            echo -e "1. add\n2. list\n3. find\n4. delete\n5. modify\n6. exit\n"
            echo -n "Enter your choice: "
            read answer

            if [ $answer = 1 ]
            then
                ./add.sh $BOOK
            elif [ $answer = 2 ]
            then
                ./list.sh $BOOK
            elif [ $answer = 3 ]
            then
                ./find.sh $BOOK
            elif [ "$answer" = "4" ]
            then
                ./del.sh $BOOK
            elif [ "$answer" = "5" ]
            then
                ./modify.sh $BOOK

            elif [ "$answer" = "6" ]
            then
                exit=1
            else
                echo "I do not understand the command."
            fi
        done

        exit 0
