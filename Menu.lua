require "Aluno"
require "Curso"
require "Disciplina"
require "Matricula"

function menu_1()
	print("Escolha operação:")
	print("1 - Inserir.")
	print("2 - Alterar.")
	print("3 - Remover.")
	print("4 - Sair.")
end

function menu_2()
	print("Escolha alvo da operação.")
	print("1 - Disciplina.")
	print("2 - Aluno.")
	print("3 - Curso.")
	print("4 - Matricula.")
	print("5 - Voltar.")
end


function readInput(lower, upper)
	ok, option, msg =
		pcall(function ()
		option = io.read()
		option = tonumber(option)
		if(option < lower or option > upper) then error() end
		end)

	if ok then
		return option, true
	else
		print("Entrada Inválida.")
		return option, false
	end
end

function menuLoop()
	local input,input2, valid, quit
	while (not valid) do
		menu_1()
		input, valid = readInput(1, 4)
	end
	--parseInput(input)

	repeat
		menu_2()
		input2, valid = readInput(1, 5)
	until (valid)
	print(input, input2)
	parseInput(input, input2)
end

function parseInput(input, input2)
	if(input == 1) then
		if(input2 == 1) then
			print("logging")
		end
		os.exit()
	end
end

menuLoop()
