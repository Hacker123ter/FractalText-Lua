-- Рисует фрактал в виде звездочек, используя рекурсию
function drawFractal(x, y, size, depth)
    if depth == 0 then
        return
    end

    -- Рисуем текущий уровень фрактала
    for i = -size, size do
        for j = -size, size do
            if math.abs(i) == size or math.abs(j) == size then
                io.write("*")
            else
                io.write(" ")
            end
        end
        io.write("\n")
    end

    -- Рекурсивный вызов для следующих уровней
    local newSize = size / 2
    drawFractal(x - newSize, y, newSize, depth - 1)
    drawFractal(x + newSize, y, newSize, depth - 1)
    drawFractal(x, y - newSize, newSize, depth - 1)
    drawFractal(x, y + newSize, newSize, depth - 1)
end

-- Главная функция
function main()
    local x, y = 0, 0   -- Центр фрактала
    local size = 10     -- Начальный размер
    local depth = 2     -- Глубина рекурсии

    -- Вызываем функцию рисования
    drawFractal(x, y, size, depth)

    io.write("\nНажмите Enter, чтобы выйти...")
    io.read()
end

main()