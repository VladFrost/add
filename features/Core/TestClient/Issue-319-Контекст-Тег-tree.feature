# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка парсинга фичи когда есть тег tree и используется иерархия в секции Контекст

Как разработчик
Я хочу чтобы корректно происходил парсинг фичи с включенным тегом tree, когда используется иерархия шагов в секции Контекст
Чтобы я мог иcпользовать этот тег в своих фичах

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий с закрытием всех окон кроме "* Vanessa ADD"


Сценарий: Проверка парсинга фичи, когда используется вертикальная черта
	Когда Я открываю VanessaADD в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиРаботСекцииКонтекст_Тег_tree"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-ADD TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                                  |
		| 'ФичаДляПроверкиРаботСекцииКонтекст_Тег_tree.feature'           |
		| 'ФичаДляПроверкиРаботСекцииКонтекст_Тег_tree'                   |
		| 'Контекст'                                                      |
		| 'Когда Шаг один, который будет веткой дерева в секции Контекст' |
		| 'Когда В панели разделов я выбираю "Основная"'                  |
		| 'И Шаг два'                                                     |
		| 'Переход  к строке таблицы'                                     |
		| 'Когда Шаг один'                                                |
		| 'Когда В панели разделов я выбираю "Основная"'                  |
		| 'И Шаг два'                                                     |
