docs:
	source ./.venv/bin/activate && ./.venv/bin/python ./auto_docs/main.py

serve:
	source ./.venv/bin/activate && cd wiki && mkdocs serve

site:
	ansible-playbook ansible/site.yaml --vault-password-file ansible/.vault-password

ha:
	ansible-playbook home-assistant/playbook.ha.yaml --vault-password-file ansible/.vault-password

remote:
	ansible-playbook ansible/playbook.remote.yaml --vault-password-file ansible/.vault-password

local:
	ansible-playbook ansible/playbook.local.yaml --vault-password-file ansible/.vault-password	

main:
	ansible-playbook ansible/playbook.main.yaml --vault-password-file ansible/.vault-password	

secondary:
	ansible-playbook ansible/playbook.secondary.yaml --vault-password-file ansible/.vault-password	
	
test:
	ansible-playbook ansible/playbook.test.yaml --vault-password-file ansible/.vault-password	

ansible-server:
	ansible-playbook ansible/playbook.ansible.yaml --vault-password-file ansible/.vault-password	

update:
	ansible-playbook ansible/update.yaml --limit servers --vault-password-file ansible/.vault-password

decrypt:
	ansible-vault decrypt --vault-password-file ansible/.vault-password ansible/vars/vault.yaml

encrypt:
	ansible-vault encrypt --vault-password-file ansible/.vault-password ansible/vars/vault.yaml

lint:
	cd scripts && python3 yml_to_yaml.py

gitinit:
	@./git-init.sh
	@echo "ansible vault pre-commit hook installed"
	@echo "don't forget to create a ansible/.vault-password too"

