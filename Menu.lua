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
	local ok, msg =
		pcall(function ()
		local option = io.read()
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
	local input, valid, quit
	while (not valid) do
		menu_1()
		input, valid = readInput(1, 4)
	end
	parseInput(input)

	repeat
		menu_2()
		input, valid = readInput(1, 5)
	until (valid)
end

function parseInput(input)
	if(input == 4) then
		os.exit()
	end
end

menuLoop()
