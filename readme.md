
This is a set of data from the EPA. http://www.epa.gov/otaq/tcldata.htm


http://www.epa.gov/otaq/tcldata.htm

Get a list of all makes.

        cat *.csv | cut -f2,3 -d, | sort | uniq | pbcopy

See the file [makes.yaml](../makes.yaml) for the output. 


Get a list of all the models for those makes

        cat *tstcar.csv | cut -f3,7 -d, | sort | uniq | pbcopy

See the file [makes_and_models.yaml](../makes_and_models.yaml) for the output. 

## Headings 1

2000 - 2009

## Headings 2

2009-2015


### Creating and granting db access

    $ echo "CREATE DATABASE epa_test_car_data;" | mysql -uroot
    $ echo "CREATE USER '$USER'@'localhost';" | mysql -uroot
    $ echo "GRANT ALL ON epa_test_car_data.* TO '$USER';" | mysql -uroot



# The early years - fixed width parsing

Parsing the fixed widths years for year, make, model. 

## 1994

        awk '{
            year=substr($0,1,4)
            two=substr($0,5,79)     #4-84
            make=substr($0,84,5)    #84-89 
            four=substr($0,90,76)   #90-166
            model=substr($0,166,25) #166-191
            rest=substr($0,192,230) #192-421
            #printf ("%s|%s|%s|%s|%s|%s\n", year, two, make, four, model,rest)
            printf ("%s|%s|%s\n", year, make, model)
        }' 94MFTCL.TXT > 94mftcl.csv

## 1995

        awk '{
            year=substr($0,1,4)
            two=substr($0,5,79)     #4-84
            make=substr($0,84,5)    #84-89 
            four=substr($0,90,76)   #90-166
            model=substr($0,166,25) #166-191
            rest=substr($0,192,230) #192-421
            #printf ("%s|%s|%s|%s|%s|%s\n", year, two, make, four, model,rest)
            printf ("%s|%s|%s\n", year, make, model)
        }' 95MFTCL.TXT > 95mftcl.csv

## 1996

        awk '{
            year=substr($0,1,4)
            two=substr($0,5,79)     #4-84
            make=substr($0,84,5)    #84-89 
            four=substr($0,90,76)   #90-166
            model=substr($0,166,25) #166-191
            rest=substr($0,192,230) #192-421
            #printf ("%s|%s|%s|%s|%s|%s\n", year, two, make, four, model,rest)
            printf ("%s|%s|%s\n", year, make, model)
        }' 96MFTCL.ASC > 96mftcl.csv

## 1997
        awk '{
            year=substr($0,1,4)
            two=substr($0,5,79)     #4-84
            make=substr($0,84,5)    #84-89 
            four=substr($0,90,76)   #90-166
            model=substr($0,166,25) #166-191
            rest=substr($0,192,230) #192-421
            #printf ("%s|%s|%s|%s|%s|%s\n", year, two, make, four, model,rest)
            printf ("%s|%s|%s\n", year, make, model)
        }' 97MFTCL.DAT > 97mftcl.csv
        
