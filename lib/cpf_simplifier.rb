# frozen_string_literal: true

require_relative "cpf_simplifier/version"

module CpfSimplifier
  class Error < StandardError; end
  # Your code goes here...

  # Formata o cpf no padrão do sistema (999.999.999.99)
  # Caso seja informado um valor nulo, retorna uma string vazia
  def format_cpf(value)
    value.to_s.gsub(/([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})/, '\1.\2.\3-\4')
  end

  def unformat_default(value)
    regex = %r{\.|-|/} # É a mesma coisa que /\.|-|\//, mas não precisa escapar / com \/
    value.to_s.gsub(regex, '')
  end
  alias unformat_nis  unformat_default
  alias unformat_cpf  unformat_default
  alias unformat_cnpj unformat_default
  alias unformat_date unformat_default

  def reformat_cpf(value)
    format_cpf(unformat_cpf(value))
  end
end
