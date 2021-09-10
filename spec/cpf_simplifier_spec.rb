# frozen_string_literal: true

RSpec.describe CpfSimplifier do
  it 'has a version number' do
    expect(CpfSimplifier::VERSION).not_to be nil
  end

  it 'format cpf to 000.000.000-00 version' do
    cpf = '05398351109'.format_cpf
    expect(cpf).to eq('053.983.511-09')
  end

  it 'unformat cpf to 00000000000 version' do
    cpf = '053.983.511-09'.unformat_cpf
    expect(cpf).to eq('05398351109')
  end
end
