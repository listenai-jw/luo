# frozen_string_literal: true

require 'rspec'

RSpec.describe 'Luo::PromptTemplate' do
  it 'can render template' do
    template = Luo::PromptTemplate.load_template('demo.md.erb')
    expect(template.render(text: "prompt")).to eq("prompt")
  end
end
