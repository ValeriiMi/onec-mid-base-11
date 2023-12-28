#Область ПрограммныйИнтерфейс

Процедура ДополнитьФорму(Форма) Экспорт
	
	// {{Молдованова В.Е.
	ИмяФормы = Форма.ИмяФормы;
	
	Если ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаПоставщику.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма);	
	КонецЕсли;
	// Молдованова В.Е.}}
	
КонецПроцедуры 

#КонецОбласти 

Процедура ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма) 
	
	// {{Молдованова В.Е.
    ПолеКонтактноеЛицо = Форма.Элементы.Добавить("КонтактноеЛицо", Тип("ПолеФормы"), Форма.Элементы.ГруппаШапкаПраво);
	ПолеКонтактноеЛицо.Вид = ВидПоляФормы.ПолеВвода;
	ПолеКонтактноеЛицо.ПутьКДанным = "Объект.Д_КонтактноеЛицо";
	// Молдованова В.Е.}}
	
КонецПроцедуры

Процедура ДобавитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма) 
	
	// {{Молдованова В.Е.
	ПолеКонтактноеЛицо = Форма.Элементы.Вставить("КонтактноеЛицо", Тип("ПолеФормы"), , Форма.Элементы.СуммаДокумента);
	ПолеКонтактноеЛицо.Вид = ВидПоляФормы.ПолеВвода;
	ПолеКонтактноеЛицо.ПутьКДанным = "Объект.Д_КонтактноеЛицо";
	// Молдованова В.Е.}}
	
КонецПроцедуры

