﻿#language: ru

@tree

Функционал: 03. Создание Чека ККМ

Как Администратор я хочу
ввести продажи
чтобы для проверки заполнения сертификатов

Контекст:
И я закрываю все окна клиентского приложения

Сценарий: Ввод Чека ККМ

* Вввод документа
	Когда в xml не найдено значение клика в панели разделов. Проверьте xml, который был получен с TestClient.
	И В панели функций я выбираю 'Чек ККМ'
	Тогда открылось окно 'Чек ККМ'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Чек ККМ (создание)'
	И из выпадающего списка с именем "Контрагент" я выбираю точное значение 'Иванов Сергей Иванович'
	И в таблице "Номенклатура" я нажимаю на кнопку с именем 'НоменклатураДобавить'
	И в таблице "Номенклатура" из выпадающего списка с именем "НоменклатураНоменклатура" я выбираю точное значение 'Осомотр врача '
	И я перехожу к следующему реквизиту
	И в таблице "Номенклатура" в поле с именем 'НоменклатураКоличество' я ввожу текст '5'
	И я перехожу к следующему реквизиту
	И в таблице "Номенклатура" в поле с именем 'НоменклатураСумма' я ввожу текст '800,00'
	И в таблице "Номенклатура" я завершаю редактирование строки
	И в таблице "Номенклатура" я добавляю строку
	И в таблице "Номенклатура" я активизирую поле с именем "НоменклатураНоменклатура"
	И в таблице "Номенклатура" я отменяю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Чек ККМ (создание) *' в течение 20 секунд
	
* Проверка заполнения

И в таблице "Список" я выбираю текущую строку
Тогда таблица "Список" стала равной:
	| 'Дата'                | 'Номер'     | 'Контрагент'             | 'Сумма чека' |
	| '01.08.2023 12:00:00' | '000000001' | 'Иванов Петров Сидоров'  | '7 000,00'   |
	| '09.08.2023 15:54:23' | '000000002' | 'Иванов Петров Сидоров'  | '40 000,00'  |
	| '19.08.2023 18:11:43' | '000000003' | 'Иванов Сергей Иванович' | '800,00'     |
* Проверка движений
	И В командном интерфейсе я выбираю 'Регистры' 'Чек ККМ'
	Тогда открылось окно 'Чек ККМ'
	И в таблице "Список" я активизирую поле с именем "Контрагент"
	И в таблице "Список" я выбираю текущую строку
	