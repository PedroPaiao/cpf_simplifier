# frozen_string_literal: true

require_relative 'cpf_simplifier/version'

# Module by using simplify methods
module CpfSimplifier
  class Error < StandardError; end
  # Your code goes here...

  # Formata cpf no padrao de vizualizaçao de usuario (999.999.999.99)
  # Caso seja informado um valor nulo, retorna uma string vazia
  def format_cpf
    to_s.gsub(/([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})/, '\1.\2.\3-\4')
  end

  def unformat_default
    # E a mesma coisa que /\.|-|\//, mas nao precisa escapar / com \/
    regex = %r{\.|-|/}
    to_s.gsub(regex, '')
  end
  alias unformat_nis  unformat_default
  alias unformat_cpf  unformat_default
  alias unformat_cnpj unformat_default
  alias unformat_date unformat_default

  def reformat_cpf
    format_cpf(unformat_cpf(self))
  end
end

# To implement cpf_simplifier in strings
class String
  include CpfSimplifier
end
