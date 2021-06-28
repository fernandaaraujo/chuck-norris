setup:
	sudo gem install bundler
	#brew update
	#brew upgrade
	brew install mint
	brew link mint
	mint bootstrap
	bundle install
	make configure_project

configure_project:
	mint run xcodegen generate
	bundle exec pod install

clear_derived_data:
	rm -rf ~/Library/Developer/Xcode/DerivedData
