#!/bin/bash

echo "Provide name of the project: "
read input

uppercasedInput=`echo $input | tr "[:lower:]" "[:upper:]"`
lowercasedInput=`echo $input | tr "[:upper:]" "[:lower:]"`
now=`date +%s%3N`
output="output-$now"
zipname="$input-$now.zip"

if [ ! -d "$output" ]; then
  mkdir $output
fi

cp ./template/entities.xml $output
sed -i "" "s/HAFWUEARC42/$uppercasedInput/g" "$output/entities.xml"
sed -i "" "s/hafwuearc42/$lowercasedInput/g" "$output/entities.xml"

cp ./template/exportDescriptor.properties $output
sed -i "" "s/HAFWUEARC42/$uppercasedInput/g" "$output/exportDescriptor.properties"
sed -i "" "s/hafwuearc42/$lowercasedInput/g" "$output/exportDescriptor.properties"

cp -r ./template/attachments $output

cd $output
zip -r ../$zipname .

cd ..
rm -rf $output