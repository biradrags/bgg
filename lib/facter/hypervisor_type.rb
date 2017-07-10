require 'facter'
#Facter.add(:hypervisor_type) do
#  setcode "sudo virt-what"
#end
Facter.add(:hypervisor_type) do
  setcode do
    hypervisor_type = {}

    Facter.value(:hypervisor_type).each do |type|
      type = Facter::Core::Execution.exec('sudo virt-what')
      if type
        hypervisor_type[hv_low] = type.first
		hypervisor_type[hv_high] = type.second
      end
    end

    hypervisor_type
  end
end