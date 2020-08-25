FROM enros/packer-build-qemu:latest

LABEL "com.github.actions.name" = "Packer build on top of kvm hypervisor"

LABEL "repository" = "https://github.com/enr0s/packer-build-action"
LABEL "homepage" = "https://github.com/enr0s/packer-build-action"
LABEL "maintainer" = "enr0s <info@enros.me>"

VOLUME /dev
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
