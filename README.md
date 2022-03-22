Создайте приложение на основе UITableView, в котором должен отображаться список людей с рандомными именами и фамилиями.

Выбирая контакт из списка должен открываться экран с детальной информацией: Полное имя, и-мейл и телефон.

Создайте модель данных Person со всеми необходимыми свойствами. В качестве модели определите структуру.
Для хранения данных создайте отдельный класс DataManager. Объявите в классе четыре массива типа String со списками имен, фамилий, и-мейлов и телефонов.
Для создания экземпляра Person() используйте рандомные элементы соответствующих массивов.
Для отображения данных в вашем приложении используйте значения экземпляра Person()
Все значения для каждого человека должны быть уникальными. Не должно быть одинаковых фамилий и имен, телефонов и и-мейлов.

Создайте второй экран с использованием TabBarController и отобразите на нем весь список контактов с детальной информацией. Для этого используйте секции, в качестве заголовков для которых нужно передать полное имя контакта. Каждая секция должна содержать 2 строки с и-мейлом и телефоном.

