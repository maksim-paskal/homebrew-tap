test:
	brew install --debug --verbose \
	./Formula/aks-engine.rb \
	./Formula/k8s-resources-cli.rb \
	./Formula/go-template.rb \
	./Formula/hcloud-k8s-ctl.rb
clean:
	brew uninstall --force \
	aks-engine \
	k8s-resources-cli \
	go-template \
	hcloud-k8s-ctl