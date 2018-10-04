require_relative 'helper.rb'

After do |scenario|
  scenario_name = scenario.name.gsub(/[^A-Za-z ]/, '').gsub(/\s+/, '_')

  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
end

# Acessa a url da aplicacao sem efetuar login
Before('@acesso_mar_aberto') do
  # pending
end

# Adiciona produto ao carrinho sem logar na aplicacao
Before('@produto_carrinho_deslogado') do
  # pending
end

Before('@produto_carrinho_logado') do
  # pending
end
