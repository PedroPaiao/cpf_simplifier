# frozen_string_literal: true

RSpec.describe CpfSimplifier do
  it 'has a version number' do
    expect(CpfSimplifier::VERSION).not_to be nil
  end

  it 'does something useful' do
    cpf = CpfSimplifier.format_cpf('05398351109')
    expect(cpf).to eq('053.983.511-09')
  end
end
