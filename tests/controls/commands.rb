# encoding: utf-8

title 'Bundle exec'

control 'bundler commands' do
  impact 1
  title 'bundle'
  desc 'Should be able to exec fakes3'

  describe command('sh /entrypoint.sh') do
    its('stdout') { should match /Loading Fake S3 with \/fakes3_root/ }
  end
end
