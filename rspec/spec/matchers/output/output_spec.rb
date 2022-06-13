describe 'Matcher output' do
  it { expect { puts 'Hailey' }.to output.to_stdout }
  it { expect { print 'Claire' }.to output('Claire').to_stdout }
  it { expect { puts 'Claire' }.to output(/Claire/).to_stdout }

  it { expect { warn 'Hailey' }.to output.to_stderr }
  # it { expect { warn 'Claire' }.to output('Claire\n').to_stderr }
  # it { expect { warn 'Claire' }.to output(/Claire/).to_stderr }
end
