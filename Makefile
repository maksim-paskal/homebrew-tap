clean:
	brew uninstall `brew ls --full-name --formula | grep maksim-paskal/tap` || true
	brew untap maksim-paskal/tap || true
	brew uninstall --force \
	k8s-resources-cli \
	go-template \
	hcloud-k8s-ctl \
	k8s-images-cli

test:
	brew untap homebrew-releaser/test || true
	brew tap-new homebrew-releaser/test --no-git
	cp Formula/* `brew --repository`/Library/Taps/homebrew-releaser/homebrew-test/Formula

	brew audit --strict --new --online homebrew-releaser/test/k8s-images-cli \
	homebrew-releaser/test/k8s-resources-cli \
	homebrew-releaser/test/hcloud-k8s-ctl
	
	brew livecheck --debug homebrew-releaser/test/k8s-images-cli \
	homebrew-releaser/test/k8s-resources-cli \
	homebrew-releaser/test/hcloud-k8s-ctl

	brew install --debug --verbose homebrew-releaser/test/k8s-images-cli \
	homebrew-releaser/test/k8s-resources-cli \
	homebrew-releaser/test/hcloud-k8s-ctl

	brew uninstall `brew ls --full-name --formula | grep homebrew-releaser/test`
	brew untap homebrew-releaser/test || true

install:
	brew install \
	maksim-paskal/tap/k8s-resources-cli \
	maksim-paskal/tap/go-template \
	maksim-paskal/tap/hcloud-k8s-ctl \
	maksim-paskal/tap/k8s-images-cli

	brew livecheck --tap=maksim-paskal/tap