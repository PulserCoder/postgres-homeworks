-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student (
    student_id serial,
    first_name varchar(100),
    last_name varchar(100),
    birthday date,
    phone varchar(100)
);

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student ADD middle_name varchar(100);

-- 3. Удалить колонку middle_name

    ALTER TABLE student DROP COLUMN middle_name;

-- 4. Переименовать колонку birthday в birth_date

    ALTER TABLE student RENAME COLUMN birthday to birth_date;

-- 5. Изменить тип данных колонки phone на varchar(32)

    ALTER TABLE student ALTER COLUMN phone SET DATA TYPE varchar(32);

-- 6. Вставить три любых записи с автогенерацией идентификатора

INSERT INTO student (first_name, last_name, birth_date, phone) VALUES
	('-', '-', '2025-09-18', '123-123-12345'),
	('-', '-', '2145-08-17', '123-123-12345'),
	('-', '-', '2073-03-03', '123-123-12345');

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние

TRUNCATE TABLE student RESTART IDENTITY;