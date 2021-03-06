test_name 'set loadbalancer as puppet in /etc/hosts' do
  step 'modify /etc/hosts' do
    puppet_ip = any_hosts_as?(:loadbalancer) ? loadbalancer.ip : master.ip
    on hosts, %Q{echo "#{puppet_ip} puppet" >> /etc/hosts}
  end

end
