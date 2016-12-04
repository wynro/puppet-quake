require 'spec_helper'
describe 'quake' do
  context 'with default values for all parameters' do
    it { should contain_class('quake') }
  end
end
