/*
В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, 
удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер 
картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы 
класть и пиццу, и картошку фри.
*/
class pizzeria{
    private var order:[OrderProtocol]
    init(order:[OrderProtocol]){
        self.order = order
    }
    func add(new: OrderProtocol){
        self.order.append(new)
    }
    func get(){
        for i in order{
            print(i)
        }
    }
}

struct pizza:OrderProtocol{
    enum pizzaType{
        case classic
        case fatPizza
        case vegetable
    }

    enum additions{
        case tomatoes
        case pepperoni
        case cheese
    }
    var type:pizzaType
    var add:additions
    var cost:Double
    var fat:Bool

    init(type: pizzaType, add: additions, cost:Double,fat:Bool){
        self.type = type
        self.add = add
        self.cost = cost
        self.fat = fat
    }
}

struct potatoe: OrderProtocol{
    enum sizePotatoe{
        case s
        case m
        case l
    }
    var cost:Double
    var size:sizePotatoe

    init(cost: Double, size:sizePotatoe){
        self.cost = cost
        self.size = size
    }
}

protocol OrderProtocol{
    var cost: Double{get}
}

let ord = pizzeria(order:[]) 
let mediumPotatoe = potatoe(cost:55,size:potatoe.sizePotatoe.s)
let justPizza = pizza(type:pizza.pizzaType.classic,add: pizza.additions.cheese,cost: 125.5,fat: true)
ord.add(new:justPizza)
ord.add(new:mediumPotatoe)

extension pizzeria{
    protocol OpenClose{
    var status:Bool = false
    func open(){
        if(status){
            print("Кафе уже открыто")
        }
        else{
            status = true
            print("Кафе открыто")
        }
    }
    func close(){
        if(!status){
            print("Кафе уже закрыто")
        }
        else{
            status = false
            print("Кафе закрыто")
        }
    }
}
}

func minus<T: Numeric>(a:T,b:T)-> T{
    a-b
}

