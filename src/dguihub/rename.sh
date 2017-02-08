#sed -i 's/dgui/dguihub/g' *.d
#sed -i 's/dgui/dguihub/g' ./core/*.d
sed -i 's/dguihubhub/dguihub/g' ./core/*.d
sed -i 's/dgui\./dguihub\./g' ./core/controls/*.d
sed -i 's/dgui\./dguihub\./g' ./core/dialogs/*.d
sed -i 's/dgui\./dguihub\./g' ./core/events/*.d
sed -i 's/dgui\./dguihub\./g' ./core/interfaces/*.d
sed -i 's/dgui\./dguihub\./g' ./core/menu/*.d
sed -i 's/dgui\./dguihub\./g' ./layout/*.d

