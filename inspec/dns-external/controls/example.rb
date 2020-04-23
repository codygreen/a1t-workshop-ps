# copyright: 2018, The Authors

title "BIG-IP DNS Validation"

describe bash('dig @10.1.10.5 test.f5demos.com') do
  its('stdout') { should match /10\.1\.10\.10/ }
  its('exit_status') { should eq 0 }
end
