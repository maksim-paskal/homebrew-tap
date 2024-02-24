test:
	brew install --debug --verbose \
	./Formula/k8s-resources-cli.rb \
	./Formula/k8s-images-cli.rb \
	./Formula/go-template.rb \
	./Formula/hcloud-k8s-ctl.rb
clean:
	brew uninstall `brew ls --full-name --formula | grep maksim-paskal/tap` || true
	brew untap maksim-paskal/tap || true
	brew uninstall --force \
	k8s-resources-cli \
	go-template \
	hcloud-k8s-ctl

audit:
	brew untap homebrew-releaser/test || true
	brew tap-new homebrew-releaser/test --no-git
	cp Formula/* `brew --repository`/Library/Taps/homebrew-releaser/homebrew-test/Formula

	brew audit --strict --new --online homebrew-releaser/test/k8s-images-cli
	brew install --debug --verbose homebrew-releaser/test/k8s-images-cli

	brew untap homebrew-releaser/test || true