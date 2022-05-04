test:
	brew install --debug --verbose \
	./Formula/k8s-resources-cli.rb \
	./Formula/go-template.rb \
	./Formula/hcloud-k8s-ctl.rb
clean:
	brew uninstall `brew ls --full-name --formula | grep maksim-paskal/tap` || true
	brew untap maksim-paskal/tap || true
	brew uninstall --force \
	k8s-resources-cli \
	go-template \
	hcloud-k8s-ctl