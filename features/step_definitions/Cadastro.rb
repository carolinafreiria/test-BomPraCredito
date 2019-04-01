Dado("que seleciono o valor de dois mil reais em nove vezes") do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get 'https://demo.bompracredito.com.br/emprestimo-pessoal/'
    sleep 3
    @driver.find_element(id:'btnTwoThousand').click
    @driver.find_element(id:'btnNineTerm').click
  end
  
  Dado("não preencho nenhum campo na tela inicial") do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get 'https://demo.bompracredito.com.br/emprestimo-pessoal/'
    sleep 3
  end

  Quando("eu preencho os dados iniciais") do
    @driver.find_element(id:'name').send_keys("Ana Carolina")
    binding.pry
    @driver.find_element(id:'email').send_keys("emailteste@gmail.com")
    @driver.find_element(id:'name').click
    @driver.find_element(id:'btnContinue').click
    sleep 3
  end

  Quando("eu clicar em continuar na tela inicial") do
    @driver.find_element(id:'button-borrower-info').click
  end

  E("preencho os dados pessoais do Desenhista") do
    @driver.find_element(id:'borrower.cpf').send_keys("78558263000")
    @driver.find_element(id:'borrower.dateOfBirth').send_keys("14081993")
    @driver.find_element(id:'borrower.monthlyGrossIncome').send_keys("300000")
    @driver.find_element(id:'borrower.gender').click
    @driver.find_element(id:'borrower.maritalStatus2').click
    @driver.find_element(id:'borrower.jobType').send_keys("Assalariado")
    sleep 1
    @driver.find_element(id:'borrower.profession').send_keys("Desenhista")
    @driver.find_element(id:'borrower.educationLevel').send_keys("Superior Completo")
    sleep 1
    @driver.find_element(id:'borrower.bankingData.bankNumber').send_keys("Banco Bradesco S.A.")
    @driver.find_element(id:'borrower.bankingData.hasCheckbook2').click
    @driver.find_element(id:'borrower.hasNegativeCreditRecord2').click
    @driver.find_element(id:'hasProperty2').click
    @driver.find_element(id:'hasVehicle2').click
    @driver.find_element(id:'button-borrower-info').click
    sleep 10
  end

  Quando("preencho os dados pessoais do Psicultor") do
    @driver.find_element(id:'borrower.cpf').send_keys("43383241980")
    @driver.find_element(id:'borrower.dateOfBirth').send_keys("14081993")
    @driver.find_element(id:'borrower.monthlyGrossIncome').send_keys("3000000")
    @driver.find_element(id:'borrower.gender').click
    @driver.find_element(id:'borrower.maritalStatus2').click
    @driver.find_element(id:'borrower.jobType').send_keys("Empresario")
    sleep 1
    @driver.find_element(id:'borrower.profession').send_keys("Psicultor")
    @driver.find_element(id:'borrower.educationLevel').send_keys("Superior Completo")
    sleep 1
    @driver.find_element(id:'borrower.bankingData.bankNumber').send_keys("Banco Bradesco S.A.")
    @driver.find_element(id:'borrower.bankingData.hasCheckbook2').click
    @driver.find_element(id:'borrower.hasNegativeCreditRecord2').click
    @driver.find_element(id:'hasProperty2').click
    @driver.find_element(id:'hasVehicle2').click
    @driver.find_element(id:'button-borrower-info').click
    sleep 10
  end
  
  Quando("preencho os dados pessoais do Estudante") do
    @driver.find_element(id:'borrower.cpf').send_keys("81202728979")
    @driver.find_element(id:'borrower.dateOfBirth').send_keys("14081993")
    @driver.find_element(id:'borrower.monthlyGrossIncome').send_keys("100000")
    @driver.find_element(id:'borrower.gender').click
    @driver.find_element(id:'borrower.maritalStatus2').click
    @driver.find_element(id:'borrower.jobType').send_keys("Estudante")
    @driver.find_element(id:'borrower.educationLevel').send_keys("Superior Incompleto")
    sleep 3
    @driver.find_element(id:'borrower.bankingData.bankNumber').send_keys("Banco Bradesco S.A.")
    @driver.find_element(id:'borrower.bankingData.hasCheckbook2').click
    @driver.find_element(id:'borrower.hasNegativeCreditRecord2').click
    @driver.find_element(id:'hasProperty2').click
    @driver.find_element(id:'hasVehicle2').click
    @driver.find_element(id:'button-borrower-info').click
    sleep 3
  end

  E("preencho os dados residenciais do Desenhista") do
    @driver.find_element(id:'homeAddress.cep').send_keys("03132125")
    sleep 3
    @driver.find_element(id:'homeAddress.number').send_keys("200")
    @driver.find_element(id:'mobilePhone').clear
    @driver.find_element(id:'mobilePhone').send_keys("(11)971162711")
    @driver.find_element(id:'loanObjective').send_keys("Viajar")
    @driver.find_element(id:'button-borrower-info').click
    sleep 20
  end

  E("preencho os dados residenciais do Psicultor") do
    @driver.find_element(id:'homeAddress.cep').send_keys("03132125")
    sleep 3
    @driver.find_element(id:'homeAddress.number').send_keys("200")
    @driver.find_element(id:'mobilePhone').clear
    @driver.find_element(id:'mobilePhone').send_keys("(11)971162711")
    @driver.find_element(id:'button-borrower-info').click
    sleep 20
  end

  E("preencho os dados residenciais do Estudante") do
    @driver.find_element(id:'homeAddress.cep').send_keys("03132125")
    sleep 3
    @driver.find_element(id:'homeAddress.number').send_keys("200")
    @driver.find_element(id:'mobilePhone').clear
    @driver.find_element(id:'mobilePhone').send_keys("(11)971162711")
    @driver.find_element(id:'button-borrower-info').click
    sleep 20
  end

  E("preencho as informações para finalizar cadastro") do
    @driver.find_element(id:'nationality').click
    @driver.find_element(id:'stateOfBirth').send_keys("SP")
    sleep 3
    @driver.find_element(id:'cityOfBirth').send_keys("Sorocaba")
    @driver.find_element(id:'rgType').send_keys("Carteira de identidade")
    @driver.find_element(id:'rgEmissionDate').send_keys("01012010")
    @driver.find_element(id:'rg').send_keys("106007000")
    @driver.find_element(id:'emmitedBy').send_keys("SSP - Secretaria de Segurança Publica")
    @driver.find_element(id:'ufrg').send_keys("SP")
    @driver.find_element(id:'motherName').send_keys("Teste teste")
    @driver.find_element(id:'homeType').click
    @driver.find_element(id:'timeInAddress').send_keys("012018")
    @driver.find_element(id:'button-personal-info').click
  end
  

#   Então("deverá aparecer uma mensagem de erro em todos os campos obrigatórios") do
#     binding.pry
#     # @driver.find_element(:xpath, "//*[@id="ep1"]/div[1]/div/div[2]/span")
#     # @driver.find_element(:xpath, "//*[@id="ep1"]/div[2]/div/div[2]/span")
#   end
