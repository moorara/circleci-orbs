define pack_publish_orb
	@ mkdir -p ./orbs/$(1)
	circleci config pack ./src/$(1)/ > ./orbs/$(1)/orb.yml
	circleci orb validate ./orbs/$(1)/orb.yml
	circleci orb publish ./orbs/$(1)/orb.yml moorara/$(1)@dev:local
endef

.PHONY: devops
devops:
	$(call pack_publish_orb,devops)
